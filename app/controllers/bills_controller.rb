class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def new
    Bill.new
  end

  def create
    Bill.create(params.require(:bill).permit(:name, :description, :amount))
    redirect_to bills_path
  end

end
