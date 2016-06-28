class String
  define_method(:clock_angle) do
    Degrees_Per_Minute ||= 6
    Degrees_Per_Hour ||= 30
    Minutes_Per_Hour ||= 60

    Total_Ticks ||= 60

    Total_Degrees_Per_Hour ||= 6 * 60
    Total_Degrees_Per_Minute ||= 6 * 5

    time = self.split(':')
    hours = time[0].to_f()
    minutes = time[1].to_f()

    if hours > 11
      hours -= 12
    end

    tick_offset = hours * 5

    hours -= hours
    minutes = (minutes - tick_offset).abs

    percent_moved = minutes/Minutes_Per_Hour

    hours * Degrees_Per_Hour + minutes * Degrees_Per_Minute - Degrees_Per_Hour * percent_moved


    # if (hour == 12.0 && minute == 0.0)
    #   return 0.0
    # end

  end
end
