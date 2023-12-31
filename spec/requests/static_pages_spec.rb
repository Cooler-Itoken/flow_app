require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe '#home' do
    it '正常にレスポンスを返すこと' do
      get root_path
      expect(response).to have_http_status :ok
    end
  end

  describe '#help' do
    it '正常にレスポンスを返すこと' do
      get help_path
      expect(response).to have_http_status :ok
    end

    it 'Helpが含まれること' do
      get help_path
      expect(response.body).to include "<title>Help</title>"
    end
  end

  describe '#about' do
    it '正常にレスポンスを返すこと' do
      get about_path
      expect(response).to have_http_status :ok
    end

    it 'Aboutが含まれること' do
      get about_path
      expect(response.body).to include "<title>About</title>"
    end
  end

  describe '#contact' do
   it '正常にレスポンスを返すこと' do
     get contact_path
     expect(response).to have_http_status :ok
   end

   it 'Contactが含まれること' do
     get contact_path
     expect(response.body).to include "<title>Contact</title>"
   end
  end
end
