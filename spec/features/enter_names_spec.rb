
feature 'names entered into form' do
  scenario 'players names are entered into a form' do
    visit('/')
    find('form').visible?
    fill_in 'player1', with: 'Alice'
    fill_in 'player2', with: 'Bob'
    click_button 'Submit'
    expect(page).to have_text('Alice Bob')
  end
end
