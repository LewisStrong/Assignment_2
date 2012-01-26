class RequestsController < ApplicationController
  before_filter :login_required
  
  def index
    @requests = @current_user.requests
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(params[:request])
    if @request.save
      flash[:notice] = "Successfully Created Holiday Request."
      redirect_to @request
    else
      render :action => 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(params[:request])
      flash[:notice] = "Successfully Updated Request."
      redirect_to @request
    else
      render :action => 'edit'
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    flash[:notice] = "Successfully Deleted Holiday Request."
    redirect_to requests_url
  end
end
