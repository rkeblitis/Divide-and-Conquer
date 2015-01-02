class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def new
    Bill.new
  end

  def create
    @bill = Bill.create(params.require(:bill).permit(:name, :description, :amount))
    add_bill_id_to_payment
  end

  def add_bill_id_to_payment
    @bill = Bill.last
    if Payment.find_by(user_id: "#{@current_user.id}")
      @payment = Payment.find_by(user_id: "#@current.user.id}")
      @payment.update(bill_id: "#{@bill.id}")
    else Payment.create(bill_id: "#{@bill.id}")
    end
    raise
    redirect_to bills_path
  end
end
