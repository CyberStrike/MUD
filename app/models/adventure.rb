class Adventure < ActiveRecord::Base
  has_many :adventure_stages
  has_many :stages, through: :adventure_stages
end
