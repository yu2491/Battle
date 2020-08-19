feature 'attacking player 2' do
  scenario 'player 1 pushes attack button and gets confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player 2 has been attacked"
  end
end
