class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.includes(:entities).all
  end

  def new
    @group = Group.new
    respond_to do |format|
      format.html { render :new, locals: { group: @group } }
    end
  end


  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
