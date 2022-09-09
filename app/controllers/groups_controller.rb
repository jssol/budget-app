class GroupsController < ApplicationController
  def index
    @groups = current_user.groups.includes(:entities).all
  end

  def show
    redirect_to user_group_entities_path(user_id: current_user.id, group_id: params[:id])
  end

  def new
    @group = Group.new
    respond_to do |format|
      format.html { render :new, locals: { group: @group } }
    end
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      flash[:notice] = 'Group created successfully'
      redirect_to user_groups_path(current_user.id)
    else
      flash[:error] = 'Group could not be created'
      render :new, locals: { group: @group }
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
