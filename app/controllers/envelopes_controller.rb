class EnvelopesController < ApplicationController
  before_filter :init_profile_account_and_envelope

  def init_profile_account_and_envelope
    @profile_account = ProfileAccount.find(params[:profile_account_id])
    @envelope = params[:id] ? Envelope.find(params[:id]) : Envelope.new
  end

  def line_items
    @line_items = @envelope.line_items
    respond_to do |format|
      format.html # line_items.html.erb
      format.json { render json: @envelope }
    end
  end

  # GET /envelopes
  # GET /envelopes.json
  def index
    @envelopes = Envelope.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @envelopes }
    end
  end

  # GET /envelopes/1
  # GET /envelopes/1.json
  def show
    @envelope = Envelope.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @envelope }
    end
  end

  # GET /envelopes/new
  # GET /envelopes/new.json
  def new
    @envelope = Envelope.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @envelope }
    end
  end

  # GET /envelopes/1/edit
  def edit
    @envelope = Envelope.find(params[:id])
  end

  # POST /envelopes
  # POST /envelopes.json
  def create
    @envelope = @profile_account.envelopes.new(params[:envelope])

    respond_to do |format|
      if @envelope.save
        format.html { redirect_to profile_account_path(@profile_account), notice: 'Envelope was successfully created.' }
        format.json { render json: @envelope, status: :created, location: @envelope }
      else
        format.html { render action: "new" }
        format.json { render json: @envelope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /envelopes/1
  # PUT /envelopes/1.json
  def update
    @envelope = Envelope.find(params[:id])

    respond_to do |format|
      if @envelope.update_attributes(params[:envelope])
        format.html { redirect_to profile_account_path(@profile_account), notice: 'Envelope was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @envelope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envelopes/1
  # DELETE /envelopes/1.json
  def destroy
    @envelope = Envelope.find(params[:id])
    @envelope.destroy

    respond_to do |format|
      format.html { redirect_to profile_account_path(@profile_account) }
      format.json { head :no_content }
    end
  end
end
