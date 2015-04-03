class Track < ActiveRecord::Base
  has_many :events
  belongs_to :day, dependent: :destroy
end
