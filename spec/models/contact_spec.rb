require 'rails_helper'

describe Contact do
  it { should have_valid(:email).when("text@gmail.com") }
  it { should_not have_valid(:email).when("", nil) }
  it { should have_valid(:first_name).when("John") }
  it { should_not have_valid(:first_name).when("", nil) }
  it { should have_valid(:last_name).when("Doe") }
  it { should_not have_valid(:last_name).when("", nil) }
end
