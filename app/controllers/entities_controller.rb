class EntitiesController < ApplicationController
  def index
    @entities = Entity.where(author_id: current_user.id).where(group_id: params[:group_id])
    respond_to do |format|
      format.html { render :index, locals: { entities: @entities, total_expenses: } }
    end
  end

  def show
    @entity = Entity.find(params[:id])
  end

  def new
    @entity = Entity.new
    respond_to do |format|
      format.html { render :new, locals: { entity: @entity } }
    end
  end

  def create
    @entity = Entity.new(entity_params)
    if @entity.save
      flash[:notice] = 'Expense added successfully'
      redirect_to user_group_entities_path(current_user.id)
    else
      flash[:error] = 'Expense could not be added'
      render :new, locals: { entity: @entity }
    end
  end

  def most_recent
    @entities = Entity.where(author_id: current_user.id).where(group_id: params[:group_id]).order('created_at DESC')
      .limit(5)
    respond_to do |format|
      format.html { render :index, locals: { entities: @entities, total_expenses: } }
    end
  end

  def most_ancient
    @entities = Entity.where(author_id: current_user.id).where(group_id: params[:group_id]).order('created_at ASC')
      .limit(5)
    respond_to do |format|
      format.html { render :index, locals: { entities: @entities, total_expenses: } }
    end
  end

  def most_expensive
    @entities = Entity.where(author_id: current_user.id).where(group_id: params[:group_id]).order('amount DESC')
      .limit(5)
    respond_to do |format|
      format.html { render :index, locals: { entities: @entities, total_expenses: } }
    end
  end

  def total_expenses
    @amount = Entity.where(author_id: current_user.id).where(group_id: params[:group_id]).sum(:amount)
  end

  private

  def entity_params
    @params = params.require(:entity).permit(:name, :amount)
    @params[:author_id] = current_user.id
    @params[:group_id] = params[:group_id]
    @params
  end
end
