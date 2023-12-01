class City < ActiveRecord::Base
    # Associations
    belongs_to :region
    has_many :suburbs
end
  