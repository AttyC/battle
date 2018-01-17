
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

feature 'see player2 hit points'do
  scenario 'player1 to be able to view player2 hit points'do
    visit('/play')
    find('.hitpoints').visible?
    within('.hitpoints') { expect(page).to have_text(23) }
  end
end
