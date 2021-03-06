class Story < ActiveRecord::Base
  has_many :components
  has_many :images, through: :component
  validates :title, :length => { maximum: 40 }
  validates :creator, :length => { maximum: 10 }
  validates :title, :creator, :presence => true
end
