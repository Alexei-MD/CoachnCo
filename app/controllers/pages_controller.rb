class PagesController < ApplicationController
  def home
  end

  def profil
    @user = current_user
    @sum = 0
    @offers = Offer.where(user_id: @user)
    if @offers.count > 0
      @offers.each do |offer|
        @sessions = Session.where(offer_id: offer.id)
        if @sessions.length > 0
          @sum += offer.price * @sessions.length
        end
        @sum
      end
    end
  end
end
