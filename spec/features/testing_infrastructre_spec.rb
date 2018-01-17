#write a feature test that checks that the hompage says Testing infrastructure working!.

# feature 'Testing homepage' do
#   scenario 'app loads homepage with correct message' do
#     visit('/')
#     expect(page).to have_text('Testing infrastructure working!')
#   end
# end

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
