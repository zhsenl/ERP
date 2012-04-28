# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  # 产生系统流水号，默认为四位
  def system_serial_no(len = 4)
    system_serial_no_option = Option.find_by_name("system_serial_no")
    if !system_serial_no_option
      system_serial_no_option = Option.new(:name => "system_serial_no", :value => 0)
      system_serial_no_option.save
    end
    system_serial_no = Integer(system_serial_no_option.value)
    format = "%0" + len.to_s + "d"
    result = sprintf(format, system_serial_no % 10**len)
    system_serial_no_option.value = system_serial_no + 1
    system_serial_no_option.save
    return result
  end
  
end
