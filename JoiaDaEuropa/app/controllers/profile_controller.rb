class ProfileController < ApplicationController

  def index

    @account = current_user


  end

end