class OutgoingMailsController < ApplicationController
  before_action :set_outgoing_mail, only: [:show, :edit, :update, :destroy]

  # GET /outgoing_mails
  # GET /outgoing_mails.json
  def index
    @outgoing_mails = OutgoingMail.all
  end

  # GET /outgoing_mails/1
  # GET /outgoing_mails/1.json
  def show
  end

  # GET /outgoing_mails/new
  def new
    @outgoing_mail = OutgoingMail.new
  end

  # GET /outgoing_mails/1/edit
  def edit
  end

  # POST /outgoing_mails
  # POST /outgoing_mails.json
  def create
    @outgoing_mail = OutgoingMail.new(outgoing_mail_params)

    respond_to do |format|
      if @outgoing_mail.save
        format.html { redirect_to @outgoing_mail, notice: 'Outgoing mail was successfully created.' }
        format.json { render :show, status: :created, location: @outgoing_mail }
      else
        format.html { render :new }
        format.json { render json: @outgoing_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outgoing_mails/1
  # PATCH/PUT /outgoing_mails/1.json
  def update
    respond_to do |format|
      if @outgoing_mail.update(outgoing_mail_params)
        format.html { redirect_to @outgoing_mail, notice: 'Outgoing mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @outgoing_mail }
      else
        format.html { render :edit }
        format.json { render json: @outgoing_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outgoing_mails/1
  # DELETE /outgoing_mails/1.json
  def destroy
    @outgoing_mail.destroy
    respond_to do |format|
      format.html { redirect_to outgoing_mails_url, notice: 'Outgoing mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outgoing_mail
      @outgoing_mail = OutgoingMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outgoing_mail_params
      params.require(:outgoing_mail).permit(:title, :description)
    end
end
