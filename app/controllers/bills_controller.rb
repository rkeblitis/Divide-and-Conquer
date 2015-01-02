class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def new
    Bill.new
  end

  def create
    @bill = Bill.create(params.require(:bill).permit(:name, :description, :amount))
    Payment.create(bill_id: "#{@bill.id}", user_id: "#{@current_user.id}")
    redirect_to bills_path
    # add_bill_id_to_payment
  end

  # def add_bill_id_to_payment
    # @bill = Bill.last
    # Payment.create(bill_id: "#{@bill.id}", user_id: "#{@current_user.id}")

    # redirect_to bills_path
  # end
end
