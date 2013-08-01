class Application < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :enterprise
  belongs_to :in_enterprise, class_name: "Enterprise"
  belongs_to :contract
  belongs_to :in_contract, class_name: "Contract"
  has_many :application_cargos, :dependent => :destroy



end
