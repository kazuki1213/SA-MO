class GroupsController < ApplicationController
  def new
    @group = Group.new()
  end

  def create
    group = Group.create(create_params)
    user = User.find(current_user.id)
    user.group_id = group.id
    user.save
    redirect_to group_path(group.id)
  end

  def show
    @group = Group.find_by(role_id: current_user.id)
    @users = User.where(group_id: @group.id)
  end

  def add_member_new
  end

  def add_member_create
    user = User.find_by(email: params[:email])
    user.group_id = current_user.group_id
    user.save
    redirect_to group_path(current_user.group_id)
  end

  def send_mail(user)
    @user = user
    # InquiryMailer.send_mail(user).deliver_now
  end

  private
  def create_params
    params.require(:group).permit(:name, :user_id, :role_id)
  end
end
