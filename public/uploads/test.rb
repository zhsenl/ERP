# -*- encoding : utf-8 -*-
﻿require 'parseexcel'
workbook = Spreadsheet::ParseExcel.parse('d:\c.xls')
worksheet = workbook.worksheet(0)
row = worksheet.row(2)
puts row.at(0).to_s('utf-8')
