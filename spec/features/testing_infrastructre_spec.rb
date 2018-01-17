#write a feature test that checks that the hompage says Testing infrastructure working!.

feature 'Testing homepage' do
  scenario 'app loads homepage with correct message' do
    visit('/')
    expect(page).to have_text('Testing infrastructure working!')
  end
end
