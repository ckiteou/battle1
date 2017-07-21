feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'seeing the current turn' do
      sign_in_and_play
      expect(page).to have_content "Name One's turn"
    end
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "Name One's turn"
    expect(page).to have_content "Name Two's turn"
  end
end
