class Stage < ActiveRecord::Base
  has_one :adventure_stage
  has_one :adventure, through: :adventure_stage

  has_one :north, class_name:'Stage', foreign_key: 'north_id'
  has_one :south, class_name:'Stage', foreign_key: 'south_id'
  has_one :east, class_name:'Stage', foreign_key: 'east_id'
  has_one :west, class_name:'Stage', foreign_key: 'west_id'
end
