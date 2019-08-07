# frozen_string_literal: true

class GroupsController < OpenReadController
  before_action :set_group, only: %i[update destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all

    render json: @groups
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    render json: Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      render json: @group, status: :created
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy

    head :no_content
  end

  def set_group
    @group = current_user.groups.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:group_name,
                                  :group_type,
                                  :group_description,
                                  :group_admin)
  end

  private :set_group, :group_params
end
