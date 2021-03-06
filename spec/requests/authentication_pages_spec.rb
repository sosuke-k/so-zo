require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "for non-signed-in users" do
    let(:user) { FactoryGirl.create(:user) }

  #   describe "when attempting to visit a protected page" do
  #     before do
  #       visit edit_user_path(user)
  #       fill_in "Email",    with: user.email
  #       fill_in "Password", with: user.password
  #       click_button "Sign in"
  #     end

  #     describe "after signing in" do

  #       it "should render the desired protected page" do
  #         expect(page).to have_title('Edit user')
  #       end
  #     end
  #   end
  # end

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    # it { should have_title('Sign in') }

    describe "with invalid information" do
      before { click_button "Sign in" }

      # it { should have_title('Sign in') }
      # it { should have_selector('div.alert.alert-error', text: 'Invalid') }

      describe "after visiting another page" do
        before { click_link "Home" }
        # it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      # before do
      #   fill_in "Email",    with: user.email.upcase
      #   fill_in "Password", with: user.password
      #   click_button "Sign in"
      # end
      before { sign_in user }

      # it { should have_title(user.name) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Settings',    href: edit_user_path(user)) }
      it { should have_link('Sign out', href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
    end
  end
end
