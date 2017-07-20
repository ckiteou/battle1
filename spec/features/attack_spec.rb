feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    visit('/play')
    find_button('Attack').click
    visit('/attack')
    find('.hit-confirm', text: 'Name One Attacked Name Two')
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Name Two: 60HP'
    expect(page).to have_content 'Name Two: 50HP'
  end
end
