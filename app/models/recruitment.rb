class Recruitment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to        :user
  has_one_attached  :image
  has_one :order

  belongs_to_active_hash :genre, shortcuts: [:name]
  belongs_to_active_hash :area,  shortcuts: [:name]

  validates :genre_id,  numericality: { other_than: 0 } 
  validates :area_id,     numericality: { other_than: 0 }

  with_options presence: true do
   validates :image
   validates :name
   validates :info
   validates :date
   validates :area_id
   validates :genre_id
   validates :salary
   validates :time_start
   validates :time_finish
   validates :station
   validates :phone
   validates :place
  end
end
