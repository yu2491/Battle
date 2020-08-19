feature 'players can enter their names' do
  scenario 'names can be filled in and then seen on screen' do
    visit('/')
    fill_in('Player 1', with: 'Yaz')
    fill_in('Player 2', with: 'Tam')
    expect(page).to have_content 'Player 1: Yaz , Player 2: Tam!'
  end
end
