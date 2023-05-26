class Publish < ApplicationRecord
  
  belongs_to :user
  has_many :passengers
  has_many :users, through: :passengers

  

   
  reverse_geocoded_by :source_latitude, :source_longitude, address: :source
  reverse_geocoded_by :destination_latitude, :destination_longitude, address: :destination


  enum status: { pending: 'pending', cancelled: 'cancelled', completed: 'completed', full: 'full' }

 


end