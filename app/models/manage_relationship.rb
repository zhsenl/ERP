# -*- encoding : utf-8 -*-
class ManageRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :enterprise
  
  validates :user_id, :presence => true
  validates :enterprise_id, :presence => true
  validates :user_id, :uniqueness => { :scope => :enterprise_id}
  
  default_scope :order => "manage_relationships.id DESC"
end
