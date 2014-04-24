class Timer
  attr_reader :hours, :minutes, :seconds

  def initialize
    @seconds = 0
    @minutes = 0
    @hours   = 0
  end

  def hours=(time)
    set_time(time)
  end

  def minutes=(time)
    set_time(time)
  end

  def seconds=(time)
    set_time(time)
  end

  def time_string
    "#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"
  end

  private

  def set_time(time)
    if time > 3600
      @hours = time / 3600
      time = time % 3600
    end

    if time > 60
      @minutes = time / 60
      time = time % 60
    end

    if time >= 0
      @seconds = time
    end
  end
end
