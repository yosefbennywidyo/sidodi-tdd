class IncomingMailsController < ApplicationController
  before_action :set_incoming_mail, only: [:show, :edit, :update, :destroy]

  # GET /incoming_mails
  # GET /incoming_mails.json
  def index
    @incoming_mails = IncomingMail.all
  end

  # GET /incoming_mails/1
  # GET /incoming_mails/1.json
  def show
  end

  # GET /incoming_mails/new
  def new
    @incoming_mail = IncomingMail.new
  end

  # GET /incoming_mails/1/edit
  def edit
  end

  # POST /incoming_mails
  # POST /incoming_mails.json
  def create
    @incoming_mail = IncomingMail.new(incoming_mail_params)

    respond_to do |format|
      if @incoming_mail.save
        format.html { redirect_to @incoming_mail, notice: 'Incoming mail was successfully created.' }
        format.json { render :show, status: :created, location: @incoming_mail }
      else
        format.html { render :new }
        format.json { render json: @incoming_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incoming_mails/1
  # PATCH/PUT /incoming_mails/1.json
  def update
    respond_to do |format|
      if @incoming_mail.update(incoming_mail_params)
        format.html { redirect_to @incoming_mail, notice: 'Incoming mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @incoming_mail }
      else
        format.html { render :edit }
        format.json { render json: @incoming_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incoming_mails/1
  # DELETE /incoming_mails/1.json
  def destroy
    @incoming_mail.destroy
    respond_to do |format|
      format.html { redirect_to incoming_mails_url, notice: 'Incoming mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incoming_mail
      @incoming_mail = IncomingMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incoming_mail_params
      params.require(:incoming_mail).permit(:title, :description)
    end
end
