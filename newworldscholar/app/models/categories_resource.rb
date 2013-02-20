class CategoriesResource < ActiveRecord::Base
  # attr_accessible :

  belongs_to :resource
  belongs_to :category


end
