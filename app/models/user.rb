class User < ActiveRecord::Base
  attr_accessor :name, :address

  validates :name, :presence => true
end
