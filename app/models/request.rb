class Request < ActiveRecord::Base
  validates_presence_of :leavedate, :returndate, :total
  attr_accessible :leavedate, :returndate, :total
  belongs_to :user
end
