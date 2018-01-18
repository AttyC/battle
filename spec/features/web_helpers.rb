def sign_in_and_play
  visit('/')
  fill_in 'player1', with: 'Alice'
  fill_in 'player2', with: 'Bob'
  click_button 'Submit'
end
