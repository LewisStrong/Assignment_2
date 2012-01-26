class RequestsController < ApplicationController
  def index
    login_required
    @requests = Request.all
  end

  def show
  login_required
    @request = Request.find(params[:id])
  end

  def new
    login_required
    @request = Request.new
  end

  def create
    @request = Request.new(params[:request])
    @request.user_id = current_user.id
    if @request.save
      flash[:notice] = "Successfully created request."
      redirect_to @request
    else
      render :action => 'new'
    end
  end

  def edit
  login_required
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(params[:request])
      flash[:notice] = "Successfully updated request."
      redirect_to @request
    else
      render :action => 'edit'
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    flash[:notice] = "Successfully destroyed request."
    redirect_to requests_url
  end
end
