class ClientAreaController < ApplicationController
before_action :check_account
  def index
    @account = current_user.account
  end


private

def check_account

  @account = Account.find_by(user_id: current_user.id)

  if @account.nil?
    current_user.account = Account.new name: current_user.email
    current_user.save
  end
end

end


