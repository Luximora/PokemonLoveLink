class CustomAnimatedSprite
  def initialize(_spritePath, _spriteName, _x, _y, _frames = 4, _viewport = nil, _width = -1, _height = -1, _multiplier = 10)
    @viewport = _viewport
    @sprite=Sprite.new(_viewport)
    @sprite.x = _x
    @sprite.y = _y
    @bitmapFile=RPG::Cache.load_bitmap(_spritePath, _spriteName)
    @bitmap=Bitmap.new(@bitmapFile.width,@bitmapFile.height)
    @bitmap.blt(0,0,@bitmapFile,Rect.new(0,0,@bitmapFile.width,@bitmapFile.height))

    @width=_width > 0 ? _width*2 : @bitmap.height*2
    @height=_height > 0 ? _height*2 : @bitmap.height*2

    @totalFrames=@bitmap.width/@bitmap.height
    @frames = _frames
    @setFrames = _frames
    @currentFrame = 0
    @animationframes = @totalFrames*@frames
    @currentIndex = 0
    @disposed = false

    @updateFrame = 0
    @updateFrameMultiplier = _multiplier
    @totalUpdateFrame = Graphics.frame_rate/@updateFrameMultiplier
    @loop_points=[0,@totalFrames]   
    @actualBitmap=Bitmap.new(@width,@height)
    @actualBitmap.clear
    @actualBitmap.stretch_blt(Rect.new(0,0,@width,@height),@bitmap,Rect.new(@currentIndex*(@width/2),0,@width/2,@height/2))
    pbUpdate
  end

  def dispose
    pbDispose
  end

  def pbDispose
    return if @disposed
    @actualBitmap.dispose if @actualBitmap && !@actualBitmap.disposed?
    @sprite.dispose if @sprite && !@sprite.disposed?
    @sprite=nil
    @disposed=true
  end

  def disposed?
    return pbIsDisposed?
  end

  def pbIsDisposed?
     return @disposed
  end

  def pbUpdate
      return if !@sprite || @sprite && @sprite.disposed?
      @updateFrame+=1

      return if @updateFrame < @totalUpdateFrame
      
      @updateFrame = 0
      @frames = @setFrames
      @currentFrame+=1
      if @currentFrame >= @frames
        @currentIndex+=1
        @currentIndex=@loop_points[0] if @currentIndex >= @loop_points[1]
        @currentIndex=@loop_points[1]-1 if @currentIndex < @loop_points[0]
        @frame=0
      end
      @actualBitmap.clear
      @actualBitmap.stretch_blt(Rect.new(0,0,@width,@height),@bitmap,Rect.new(@currentIndex*(@width/2),0,@width/2,@height/2))
      @sprite.bitmap=@actualBitmap
  end
end

class AnimatedPortraitBitmap
  attr_reader :width
  attr_reader :height
  attr_reader :totalFrames
  attr_reader :currentIndex
  attr_accessor :speed
 
  def initialize(file)
    raise "filename is nil" if file==nil
    @width = 0
    @height = 0
    @frame = 0
    @direction = +1
    @totalFrames = 0
    @currentIndex = 0
    @speed = 6
      # 0 - not moving at all
      # 1 - normal speed
      # 2 - medium speed
      # 3 - slow speed
    @bitmap=RPG::Cache.load_bitmap("", file)
      # initializes full Pokemon bitmap
    @width=@bitmap.height*2
    @height=@bitmap.height*2
 
    @totalFrames=@bitmap.width/@bitmap.height
      # calculates total number of frames
    @loop_points=[0,@totalFrames]
      # first value is start, second is end
 
    @actualBitmap=Bitmap.new(@width,@height)
    @actualBitmap.clear
    @actualBitmap.stretch_blt(Rect.new(0,0,@width,@height),@bitmap,Rect.new(@currentIndex*(@width/2),0,@width/2,@height/2))
  end
 
  def length; @totalFrames; end
  def disposed?; @actualBitmap.disposed?; end
  def dispose; @actualBitmap.dispose; end
  def copy; @actualBitmap.clone; end
  def bitmap; @actualBitmap; end
 
  def reverse
    if @direction>0
      @direction=-1
    elsif @direction<0
      @direction=+1
    end
  end
 
  def setLoop(start, finish)
    @loop_points=[start,finish]
  end
 
  def toFrame(frame)
    if frame.is_a?(String)
      if frame=="last"
        frame=@totalFrames-1
      else
        frame=0
      end
    end
    frame=@totalFrames if frame>@totalFrames
    frame=0 if frame<0
    @currentIndex=frame
    @actualBitmap.clear
    @actualBitmap.stretch_blt(Rect.new(0,0,@width,@height),@bitmap,Rect.new(@currentIndex*(@width/2),0,@width/2,@height/2))
  end
 
  def update
    return false if @speed<1
    case @speed
    # frame skip
    when 1
      frames=1
    when 2
      frames=2
    when 3
      frames=3
    when 4
      frames=4
    when 5
      frames=5
    when 6
      frames=6
    when 7
      frames=7
    when 8
      frames=8
    when 9
      frames=9
  end
    @frame+=1
 
    if @frame>=frames
      # processes animation speed
      @currentIndex+=@direction
      @currentIndex=@loop_points[0] if @currentIndex>=@loop_points[1]
      @currentIndex=@loop_points[1]-1 if @currentIndex<@loop_points[0]
      @frame=0
    end
    @actualBitmap.clear
    @actualBitmap.stretch_blt(Rect.new(0,0,@width,@height),@bitmap,Rect.new(@currentIndex*(@width/2),0,@width/2,@height/2))
      # updates the actual bitmap
  end
 
  # returns bitmap to original state
  def deanimate
    @frame=0
    @currentIndex=0
    @actualBitmap.clear
    @actualBitmap.stretch_blt(Rect.new(0,0,@width,@height),@bitmap,Rect.new(@currentIndex*(@width/2),0,@width/2,@height/2))
  end
end