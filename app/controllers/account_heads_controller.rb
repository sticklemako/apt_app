class AccountHeadsController < ApplicationController
  include AccountHeadsHelper
  before_action :set_account_head, only: [:show, :edit, :update, :destroy]

  # GET /account_heads
  # GET /account_heads.json
  def index
    @account_heads = AccountHead.all
  end

  # GET /account_heads/1
  # GET /account_heads/1.json
  def show
  end

  # GET /account_heads/new
  def new
    @account_head = AccountHead.new
  end

  # GET /account_heads/1/edit
  def edit
  end

  # POST /account_heads
  # POST /account_heads.json
  def create
    @account_head = AccountHead.new(account_head_params)
    respond_to do |format|
      if @account_head.save
        attach_category
        format.html { redirect_to action: :index, notice: 'Account head was successfully created.' }
        format.json { render :show, status: :created, location: @account_head }
      else
        format.html { render :new }
        format.json { render json: @account_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_heads/1
  # PATCH/PUT /account_heads/1.json
  def update
    attach_category
    respond_to do |format|
      if @account_head.update(account_head_params)
        format.html { redirect_to action: :index, notice: 'Account head was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_head }
      else
        format.html { render :edit }
        format.json { render json: @account_head.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_heads/1
  # DELETE /account_heads/1.json
  def destroy
    @account_head.destroy
    respond_to do |format|
      format.html { redirect_to account_heads_url, notice: 'Account head was successfully destroyed.' }
      format.json { head :no_content }
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_head
      @account_head = AccountHead.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_head_params
      params.require(:account_head).permit(:name, :desc)
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
