require 'rails_helper'

feature "User signs in with Twitter omniauth" do
  include Capybara::DSL
  Capybara.app = Pharm2doctor::Application

  before do
    stub_omniauth
  end

  scenario "successfully" do

    visit root_path
    click_on "Login with Twitter"
    expect(current_path).to eq "/"
    expect(page).to have_content "Hello"
    expect(page).to have_link "Logout"
  end
end

def stub_omniauth
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
    provider: 'twitter',
    extra: {
      raw_info: {
        uid: "1234",
        name: "Piper",
        screen_name: "Pipericious",
      }
    },
    credentials: {
      token: "scout",
      secret: "unsecret"
    }
  })
end
