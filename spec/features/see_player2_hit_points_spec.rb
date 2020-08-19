feature 'seeing player 2 hit points' do
  scenario 'points are displayed after player 2 name' do
    sign_in_and_play
    expect(page).to have_content 'Charlotte: 100 HP'
  end
end
