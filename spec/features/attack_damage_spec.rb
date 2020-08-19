feature 'attack' do
  scenario 'reduces HP by 10' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content 'Charlotte: 90 HP'
  end
end
