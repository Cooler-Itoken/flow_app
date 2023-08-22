RSpec.describe "Users", type: :system do
    describe '#index' do
        let!(:admin) { FactoryBot.create(:user) }
        let!(:not_admin) { FactoryBot.create(:archer) }
  
        it 'adminユーザならdeleteリンクが表示されること' do
            log_in admin
            visit users_path
        
            expect(page).to have_link 'delete'
        end
  
        it 'adminユーザでなければdeleteリンクが表示されないこと' do
            log_in not_admin
            visit users_path
        
            expect(page).to_not have_link 'delete'
        end
    end
end