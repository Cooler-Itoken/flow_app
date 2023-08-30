require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  let(:user) { FactoryBot.create(:user)}
  let(:mail) { UserMailer.account_activation(user) }
  let(:from_address) { "user@realdomain.com" }

  it "sends to the user's email address" do
    expect(mail.to).to eq [user.email]
  end

  it "sends with the correct subject" do
    expect(mail.subject).to eq("Account activation")
  end

  it "sends from the correct email address" do
    expect(mail.from).to eq [from_address]
  end

  describe "body" do
    before do
      user.activation_token = User.new_token
    end
    it "includes the user's name" do
      expect(mail.body.encoded).to match(user.name)
    end

    it "includes the user's email" do
      expect(mail.body.encoded).to match(CGI.escape(user.email))
    end

    it "includes the activation token" do
      expect(mail.body.encoded).to match(user.activation_token)
    end
  end
  # describe "account_activation" do
  #   let(:user) { FactoryBot.create(:user) }
  #   let(:mail) { UserMailer.account_activation }

  #   before do
  #     user.activation_token = User.new_token
  #   end
 
  #   it '"Account activation"というタイトルで送信されること' do
  #     expect(mail.subject).to eq('Account activation')
  #   end
 
  #   it '送信先が"to@example.org"であること' do
  #     expect(mail.to).to eq([user.email])
  #   end
 
  #   it '送信元が"from@example.com"であること' do
  #     expect(mail.from).to eq(['noreply@example.com'])
  #   end
 
  #   it 'メール本文にユーザ名が表示されていること' do
  #     expect(mail.body.encoded).to match(user.name)
  #   end
 
  #   it 'メール本文にユーザのactivation_tokenが表示されていること' do
  #     expect(mail.body.encoded).to match(user.activation_token)
  #   end

  #   it 'メール本文にユーザのemailが表示されていること' do
  #     expect(mail.body.encoded).to match(CGI.escape(user.email))
  #   end

  #   # it "renders the headers" do
  #   #   expect(mail.subject).to eq("Account activation")
  #   #   expect(mail.to).to eq(["to@example.org"])
  #   #   expect(mail.from).to eq(["from@example.com"])
  #   # end

  #   # it "renders the body" do
  #   #   expect(mail.body.encoded).to match("Hi")
  #   # end
  # end

  describe "password_reset" do
    let(:mail) { UserMailer.password_reset(user) }

    before do
      user.reset_token = User.new_token
    end

    it '"Password reset"というタイトルで送信されること' do
      expect(mail.subject).to eq('Password reset')
    end

    it '送信先が"to@example.org"であること' do
      expect(mail.to).to eq([user.email])
    end

    it '送信元が"user@realdomain.com"であること' do
      expect(mail.from).to eq(['user@realdomain.com'])
    end

    it 'メール本文にreset_tokenが表示されていること' do
      expect(mail.body.encoded).to match(user.reset_token)
    end

    it 'メール本文にユーザのemailが表示されていること' do
      expect(mail.body.encoded).to match(CGI.escape(user.email))
    end
  end

end
