feature 'see player2 hit points'do
  scenario 'view player2 hit points' do
    sign_in_and_play
    within('.hitpoints') { expect(page).to have_text('Bob has 100 points') }
  end

  scenario 'view player1 hit points' do
    sign_in_and_play
    within('.hitpoints') { expect(page).to have_text('Alice has 100 points') }
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
    expect(page).to have_text('Bob has 90 points')
  end

  scenario 'player1 hit points are shown' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_text('Alice has 100 points')
  end

  scenario 'reduce HP to zero' do
    sign_in_and_play
    18.times do
      click_button 'Attack'
      click_link 'Next turn'
    end
    click_button 'Attack'
    expect(page).to have_text('Bob has lost, sucker!')
  end
end
