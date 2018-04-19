class TransactionsController < ApplicationController
  def new
    @transcation = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.description = "description"
    @transaction.amount = 0.00
    @transaction.user_id = current_user.id # user who creates the transaction and makes the charge
                                           # have different way of keeping track of who is being charged
    if @transaction.save
      redirect_to event_path(id: current_event.id)
    else
      redirect_to new_path, :flash => { :error => "Please describe your transaction and/or charge an amount."}
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:description, :amount)
    end
end
