
feature 'names entered into form' do
  scenario 'players names are entered into a form' do
    sign_in_and_play
    expect(page).to have_text('Alice and Bob')
  end
end
