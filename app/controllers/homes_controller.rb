class HomesController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def new
    render json: params
    return
  	object = User.new(
        :ip => "192.168.1.50",
        :key_user => "key1",
        :key_ip => "key2",
        :key_license => "key3",
        :datetime => 123,
        :datetime_expire => nil,
        :use_first => nil,
        :use_last => nil,
        :is_active => 1
      )
  	object.save
  end

end
