class CustomersController < ApplicationController
  def index
    @customers= Customer.all
  end

  def create
      @customer = Customer.new(customer_params)
      if @customer.save
        redirect_to customer_path(@customer)
      else
          flash[:errors] = @customer.errors.full_messages
          flash[:data] = @customer
          redirect_to new_customer_path
      end
  end
     
  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def profile
    if !@current_customer
      flash[:notice] = "Please sign in to continue!"
      redirect_to "/login_form"
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:username, :password, :age, :bio, :name)
  end
end
