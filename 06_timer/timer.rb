class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    t = Time.at(@seconds).strftime "%Z %H %M %S"
    t = t.split(" ")

    s = t[3].to_s
    m = t[2].to_s

    # subtract time zone val from hour val since total hour includes time zone
    h = t[1].to_i - t[0][1..-1].to_i
    h = (h < 10) ? '0' + h.to_s : h.to_s # prepend '0' if hour is 1 digit only

    "#{h}:#{m}:#{s}"
  end
end
