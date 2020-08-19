feature 'players can enter their names' do
  scenario 'names can be filled in and then seen on screen' do
    sign_in_and_play
    expect(page).to have_content 'Yaz vs Charlotte!'
  end
end
