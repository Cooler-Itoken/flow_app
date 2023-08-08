require 'rails_helper'

RSpec.describe "StaticPagesSpec.rbs", type: :system do
  before do
    driven_by(:rack_test)
  end

  # pending "add some scenarios (or delete) #{__FILE__}"

  describe 'root' do
    it 'root_pathへのリンクが2つ、help, about, contactへのリンクが表示されていること' do
      visit root_path
      link_to_root = page.find_all("a[href=\"#{root_path}\"]")
 
      expect(link_to_root.size).to eq 2
      expect(page).to have_link 'Help', href: help_path
      expect(page).to have_link 'About', href: about_path
      expect(page).to have_link 'Contact', href: contact_path
    end
  end

  describe '#create' do
   context '無効な値の場合' do
     it 'エラーメッセージ用の表示領域が描画されていること' do
       visit signup_path
       fill_in 'Name', with: ''
       fill_in 'Email', with: 'user@invlid'
       fill_in 'Password', with: 'foo'
       fill_in 'Confirmation', with: 'bar'
       click_button 'Create my account'
 
       expect(page).to have_selector 'div#error_explanation'
       expect(page).to have_selector 'div.field_with_errors'
     end
   end
 end
end
