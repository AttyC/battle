feature 'see player2 hit points'do
  scenario 'player1 to be able to view player2 hit points'do
    sign_in_and_play
    within('.hitpoints') { expect(page).to have_text(100) }
  end
end

feature 'player1 attacks player2' do
  scenario 'player1 has a confirmation after the attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_text('Alice attacks Bob')
  end
end

feature 'reduce player2 hit points' do
  scenario 'player2 hit points reduced by 10 when attacked' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_text(90)
  end
end
