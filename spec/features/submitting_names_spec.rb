feature 'players can enter their names' do
  scenario 'names can be filled in and then seen on screen' do
    visit('/')
    fill_in :player1, with: 'Yaz'
    fill_in :player2, with: 'Charlotte'
    click_button('Submit')
    expect(page).to have_content 'Yaz vs Charlotte!'
  end
end
