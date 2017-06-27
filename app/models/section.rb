class Section < ActiveRecord::Base
  belongs_to :chapter
  has_many :lessons

  validates :name, :presence => true

end
