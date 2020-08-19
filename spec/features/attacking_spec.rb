feature 'attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Charlotte has been attacked"
  end

  scenario 'reduces HP by 10' do
    sign_in_and_play
    click_button("Attack")
    click_button("OK")
    expect(page).not_to have_content 'Charlotte: 100 HP'
    expect(page).to have_content 'Charlotte: 90 HP'
  end
end
