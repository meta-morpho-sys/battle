feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Ben'
    fill_in :player_2_name, with: 'Yuliya'
    click_button 'Submit'
    expect(page).to have_content 'Ben vs. Yuliya'
  end
end
