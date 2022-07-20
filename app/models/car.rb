class Car < ApplicationRecord
    scope :unrented, -> {where("rented = '' OR rented IS NULL").order("created_at DESC")}
    scope :user_rented, ->(user) {where(rented: user.email)}
end
