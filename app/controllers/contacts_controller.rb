class ContactsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @contacts = @user.contacts + @user.shared_contacts

    render json: @contacts
  end

  def show
    @contact = Contact.find(params[:id])
    render json: @contact
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render json: @contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @contact = contact.find(params[:id])
    render json: @contact
    @contact.destroy
  end

  def update
    @contact = contact.find(params[:id])
    @contact.update(contact_params)

    if @contact.save
      render json: @contact
    else
      render json: @contact.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
    def contact_params
      params.require(:contact, :user_id).permit(:name, :email)
    end

end
