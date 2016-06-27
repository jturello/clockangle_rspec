class String
  define_method(:clock_angle) do
    DegreesPerMinute = 6
    DegreesPerHour = 30
    time = self.split(':')
    hour = time[0].to_f()
    minute = time[1].to_f()

    if hour > 11
      hour -= 12
    end
    hour * DegreesPerHour + minute * DegreesPerMinute



    # if (hour == 12.0 && minute == 0.0)
    #   return 0.0
    # end

  end
end
