class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :categories_resources

  has_many :resources, :through => :categories_resources


end
