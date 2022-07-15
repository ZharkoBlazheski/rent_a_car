module ApplicationHelper
    def rented_car(car)
        "#{User.find_by(email: car.rented).first_name.capitalize} #{User.find_by(email: car.rented).last_name.capitalize}"
    end
end
