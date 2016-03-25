require 'rails_helper'

feature 'view all contacts', %{
  As an admin,
  I should be able to view all contacts,
  So I can respond to their messages
} do
  # ACCEPTANCE CRITERIA
  # * As a creator, I can view all contacts.

  let!(:contact) { create(:contact) }

  scenario "creator views all contacts on index page" do
    visit contacts_path

    expect(page).to have_content("John Doe")
    expect(page).to have_content("test@gmail.com")
    expect(page).to have_content("Hello!")
  end
end
