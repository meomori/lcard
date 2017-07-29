class ContactsController < ApplicationController
  def feed
  	@following_professionals = []

  	Professional.all.each do |link|
  		if current_user.following.include?(link.user_id) || current_user.id == link.user_id
  			@following_professionals.push(link)
  		end
  	end
  end

  def show_user
  	@user = User.find(params[:id])
  end

  def now_linked
  	current_user.following.push(params[:id].to_i)
  	current_user.save

  	redirect_to show_user_path(id: params[:id])
  end

  def unlink
  end
end
