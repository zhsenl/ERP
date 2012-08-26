class DispatchRecord < ActiveRecord::Base
  attr_accessible :channel, :declaration_id, :message_id, :note, :task_id
end
