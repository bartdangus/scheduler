class Event < ActiveRecord::Base
  belongs_to :track, dependent: :destroy
  belongs_to :day
end
