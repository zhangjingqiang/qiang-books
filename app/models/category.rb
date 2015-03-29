class Category < ActiveRecord::Base
  validates :name, presence: true
  
  def to_param
    name
  end
  
  default_scope { order('name ASC') }
end
