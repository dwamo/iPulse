class Suburb < ActiveRecord::Base
    # Associations
    belongs_to :city
    has_many :contacts
end
  