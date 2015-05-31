class AdventureStage < ActiveRecord::Base
  belongs_to :adventure
  belongs_to :stage
end
