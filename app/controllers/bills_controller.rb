class BillsController < ApplicationController

  def index

  end

  def new
    Bill.new
  end

  def create
    Bill.create()
  end

end
