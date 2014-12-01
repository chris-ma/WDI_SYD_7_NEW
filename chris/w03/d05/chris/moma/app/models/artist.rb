class Artist < ActiveRecord::Base
  has_many :paintings, dependent: :destroy
   validates :first_name, :last_name, :nationality, :period, presence: true
end
