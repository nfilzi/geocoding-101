class Flat < ApplicationRecord
  geocoded_by :address

  # geocoded_by :full_address
  # def full_address
  #   "#{address}, #{zipcode}"
  # end

  after_validation :geocode, if: :will_save_change_to_address?
end
