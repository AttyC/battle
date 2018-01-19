feature 'switch turns' do
  context 'display current player'do
    scenario 'at start of game'do
      sign_in_and_play
      (expect(page).to have_content("Alice's turn"))
    end

    scenario 'after player1 attacks'do
      sign_in_and_play
      click_button 'Attack'
      (expect(page).to have_content("Next turn"))
    end
    scenario 'after player1 attacks'do
      sign_in_and_play
      click_button 'Attack'
      click_link 'Next turn'
      (expect(page).to have_content("Bob's turn"))
    end
  end
end
