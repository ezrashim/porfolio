class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    binding.pry
  end
end
