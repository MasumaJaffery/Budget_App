class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @transactions = @category.transactions.order(created_at: :desc)
    @total_amount = @transactions.sum(:amount)
    render locals: { category: @category, total_amount: @total_amount, transactions: @transactions }
  end

  def user_transactions
    @all_transactions = current_user.transactions.order(created_at: :desc)
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @transaction = Transaction.new
    @categories = Category.all
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)
    @transaction.user_id = current_user.id
    if @transaction.save
      flash[:success] = 'Transaction successfully created!'
      redirect_to category_transactions_path(category_id: transaction_params[:category_id]),
                  notice: 'Payment was successfully saved.'
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :user_id, :category_id)
  end
end
