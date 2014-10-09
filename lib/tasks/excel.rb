
require 'win32ole'
excel = nil
begin
  excel = WIN32OLE.connect("excel.application")
rescue
  excel = WIN32OLE.new("excel.application")
end
excel.visible = true
workbook = excel.Workbooks.Open(ARGV[0])
filename =  ARGV[0][0..-5] + '_excel.xls'
dos_file = filename.gsub(/\//, "\\\\")
workbook.SaveAs dos_file, 56
excel.ActiveWorkbook.Close(0);
puts filename


