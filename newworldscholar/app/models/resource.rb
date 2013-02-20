class Resource < ActiveRecord::Base
  attr_accessible :category, :name, :picture, :url

  validates_presence_of :name, :url

  has_many :categories_resources

  has_many :categories, :through => :categories_resources

end
