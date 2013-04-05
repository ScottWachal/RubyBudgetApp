class ProfileAccountsController < ApplicationController
  # GET /profile_accounts
  # GET /profile_accounts.json
  def index
    @profile_accounts = ProfileAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profile_accounts }
    end
  end

  # GET /profile_accounts/1
  # GET /profile_accounts/1.json
  def show
    @profile_account  = ProfileAccount.find(params[:id])
    @envelopes = @profile_account.envelopes
    @accounts = @profile_account.accounts
    @line_items = @profile_account.line_items
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile_account }
    end
  end

  # GET /profile_accounts/new
  # GET /profile_accounts/new.json
  def new
    @profile_account = ProfileAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile_account }
    end
  end

  # GET /profile_accounts/1/edit
  def edit
    @profile_account = ProfileAccount.find(params[:id])
  end

  # POST /profile_accounts
  # POST /profile_accounts.json
  def create
    @profile_account = ProfileAccount.new(params[:profile_account])

    respond_to do |format|
      if @profile_account.save
        format.html { redirect_to @profile_account, notice: 'Profile account was successfully created.' }
        format.json { render json: @profile_account, status: :created, location: @profile_account }
      else
        format.html { render action: "new" }
        format.json { render json: @profile_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profile_accounts/1
  # PUT /profile_accounts/1.json
  def update
    @profile_account = ProfileAccount.find(params[:id])

    respond_to do |format|
      if @profile_account.update_attributes(params[:profile_account])
        format.html { redirect_to @profile_account, notice: 'Profile account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_accounts/1
  # DELETE /profile_accounts/1.json
  def destroy
    @profile_account = ProfileAccount.find(params[:id])
    @profile_account.destroy

    respond_to do |format|
      format.html { redirect_to profile_accounts_url }
      format.json { head :no_content }
    end
  end
end
