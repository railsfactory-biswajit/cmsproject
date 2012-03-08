class Bolt::UserGroupsController < ApplicationController
  # GET /bolt/user_groups
  # GET /bolt/user_groups.json
  def index
    @bolt_user_groups = Bolt::UserGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bolt_user_groups }
    end
  end

  # GET /bolt/user_groups/1
  # GET /bolt/user_groups/1.json
  def show
    @bolt_user_group = Bolt::UserGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bolt_user_group }
    end
  end

  # GET /bolt/user_groups/new
  # GET /bolt/user_groups/new.json
  def new
    @bolt_user_group = Bolt::UserGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bolt_user_group }
    end
  end

  # GET /bolt/user_groups/1/edit
  def edit
    @bolt_user_group = Bolt::UserGroup.find(params[:id])
  end

  # POST /bolt/user_groups
  # POST /bolt/user_groups.json
  def create
    @bolt_user_group = Bolt::UserGroup.new(params[:bolt_user_group])

    respond_to do |format|
      if @bolt_user_group.save
        format.html { redirect_to @bolt_user_group, notice: 'User group was successfully created.' }
        format.json { render json: @bolt_user_group, status: :created, location: @bolt_user_group }
      else
        format.html { render action: "new" }
        format.json { render json: @bolt_user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bolt/user_groups/1
  # PUT /bolt/user_groups/1.json
  def update
    @bolt_user_group = Bolt::UserGroup.find(params[:id])

    respond_to do |format|
      if @bolt_user_group.update_attributes(params[:bolt_user_group])
        format.html { redirect_to @bolt_user_group, notice: 'User group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bolt_user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolt/user_groups/1
  # DELETE /bolt/user_groups/1.json
  def destroy
    @bolt_user_group = Bolt::UserGroup.find(params[:id])
    if @bolt_user_group.destroy
      
       redirect_to :back
    
    end
  end
end
