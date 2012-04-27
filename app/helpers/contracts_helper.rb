# -*- encoding : utf-8 -*-
module ContractsHelper
  def import_contract(file)
    import_result = true
    Spreadsheet.client_encoding = 'UTF-8'
    
    contract = Contract.new

    Spreadsheet.open file.path do |workbook|
      
      worksheet = workbook.worksheet(0)      
      contract.manual = worksheet.row(2).at(3).to_s
      contract.operate_enterprise = worksheet.row(4).at(1).to_s
      enterprise = Enterprise.find_by_code(worksheet.row(4).at(5).to_s)
      contract.enterprise_id = enterprise.id
      foreign_enterprise = ForeignEnterprise.find_by_name(worksheet.row(5).at(1).to_s)
      contract.foreign_enterprise = foreign_enterprise.code if !foreign_enterprise.nil?
      trade_mode = Dict::TradeMode.find_by_name(worksheet.row(5).at(5).to_s)
      contract.trade_mode = trade_mode.code if !trade_mode.nil?
      tax_kind = Dict::TaxKind.find_by_name(worksheet.row(6).at(1).to_s)
      contract.tax_kind = tax_kind.code if !tax_kind.nil?
      deal_mode = Dict::DealMode.find_by_name(worksheet.row(6).at(5).to_s)
      contract.export_deal_mode = deal_mode.code if !deal_mode.nil?
      contract.import_deal_mode = deal_mode.code if !deal_mode.nil?
      contract.export_contract = worksheet.row(8).at(5).to_s
      contract.import_contract = worksheet.row(8).at(3).to_s
      export_currency = Dict::Currency.find_by_name(worksheet.row(10).at(1).to_s)
      contract.export_currency = export_currency.code if !export_currency.nil?
      import_currency = Dict::Currency.find_by_name(worksheet.row(9).at(3).to_s)
      contract.import_currency = import_currency.code if !import_currency.nil?
      contract.export_deadline = worksheet.row(11).at(1).to_s
      contract.import_deadline = worksheet.row(14).at(1).to_s
      contract.type_in_date = worksheet.row(13).at(5).to_s
      import_result &= contract.save

      worksheet = workbook.worksheet(1)
      worksheet.each(2) do |row|
        contract_materail = ContractMaterial.new(:contract_id => contract.id)
        contract_materail.no = row.at(0).to_i
        contract_materail.code = row.at(2).to_s + row.at(3).to_s
        contract_materail.name = row.at(4).to_s
        contract_materail.specification = row.at(5).to_s if !row.at(5).nil?
        unit = Dict::Unit.find_by_name(row.at(7).to_s)
        contract_materail.unit = unit.code if !unit.nil?
        contract_materail.quantity = row.at(9).to_s
        contract_materail.unit_price = row.at(10).to_s
        country = Dict::Country.find_by_name(row.at(13).to_s)
        contract_materail.country = country.code if !country.nil?
        tax_mode = Dict::TaxMode.find_by_name(row.at(15).to_s)
        contract_materail.tax_mode = tax_mode.code if !tax_mode.nil?
        import_result &= contract_materail.save
      end

      worksheet = workbook.worksheet(2)
      worksheet.each(2) do |row|
        contract_product = ContractProduct.new(:contract_id => contract.id)
        contract_product.no = row.at(0).to_i
        contract_product.code = row.at(2).to_s + row.at(3).to_s
        contract_product.name = row.at(4).to_s
        contract_product.specification = row.at(5).to_s if !row.at(5).nil?
        unit = Dict::Unit.find_by_name(row.at(6).to_s)
        contract_product.unit = unit.code if !unit.nil?
        contract_product.quantity = row.at(8).to_s
        contract_product.unit_price = row.at(9).to_s
        country = Dict::Country.find_by_name(row.at(12).to_s)
        contract_product.country = country.code if !country.nil?
        tax_mode = Dict::TaxMode.find_by_name(row.at(14).to_s)
        contract_product.tax_mode = tax_mode.code if !tax_mode.nil?
        import_result &= contract_product.save
      end

      worksheet = workbook.worksheet(3)
      worksheet.each(2) do |row|
        contract_consumption = ContractConsumption.new
        contract_product_no = row.at(0).to_i
        contract_product = ContractProduct.where("contract_id = ? and no = ?", contract.id, contract_product_no).first
        contract_consumption.contract_product_id = contract_product.id
        contract_material_no = row.at(4).to_i
        contract_material = ContractMaterial.where("contract_id = ? and no = ?", contract.id, contract_material_no).first
        contract_consumption.contract_material_id = contract_material.id
        contract_consumption.used = row.at(8).to_s
        contract_consumption.wasted = row.at(9).to_s
        import_result &= contract_consumption.save
      end
    end

    return {:result => import_result, :contract => contract}
  end
end
