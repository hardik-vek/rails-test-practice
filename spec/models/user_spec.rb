require "rails_helper"

RSpec.describe User, type: :model do

  it "factory bot" do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
    puts user.name
    puts user.email
    puts user.phone_number
    puts user.password
  end
end
