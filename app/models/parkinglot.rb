class Parkinglot < ActiveRecord::Base
  belongs_to :user
  belongs_to :ubigeo
  belongs_to :nearby
  has_many :reservations
  has_many :userinteractions
  
  has_attached_file :avatar,
       styles: { medium: '300x300>', thumb: '100x100>'},
       default_url: 'images/:style/missing.png'
    
    validates_attachment :avatar,
     content_type: { content_type: ['image/jpeg', 'image/png', 'image/gif'] }    
    
end
