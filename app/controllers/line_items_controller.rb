class LineItemsController < ApplicationController

  before_filter :init_profile_account_and_line_item

  def init_profile_account_and_line_item
    @profile_account = ProfileAccount.find(params[:profile_account_id])
    @line_items = @profile_account.line_items
    @line_item = params[:id] ? LineItem.find(params[:id]) : LineItem.new
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line_item }
    end
  end

  # GET /line_items/new
  # GET /line_items/new.json
  def new
    @allocate = params[:allocate]
    if(params[:type] == 'envelope')
      @envelope = Envelope.find(params[:id])
    elsif(params[:type] == 'account')
      @account = Account.find(params[:id])
    end
    @line_item = LineItem.new(allocation: @allocate)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line_item }
    end
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
    @line_item = @profile_account.line_items.new(params[:line_item])

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to profile_account_path(@profile_account), notice: 'Line item was successfully created.' }
        format.json { render json: @line_item, status: :created, location: @line_item }
      else
        format.html { render action: "new" }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /line_items/1
  # PUT /line_items/1.json
  def update
    @line_item = LineItem.find(params[:id])

    respond_to do |format|
      if @line_item.update_attributes(params[:line_item])
        format.html { redirect_to profile_account_path(@profile_account), notice: 'Line item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy

    respond_to do |format|
      format.html { redirect_to profile_account_path(@profile_account) }
      format.json { head :no_content }
    end
  end
end
