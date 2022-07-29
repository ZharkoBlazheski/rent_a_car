class UserMailer < ApplicationMailer
    def rent_a_car_mail(current_user, car)
        @car = car
        @user = current_user
        mail(to: @user.email, subject: "You rented a car!")
    end
end
