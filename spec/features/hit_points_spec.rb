feature 'View hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    visit('/play')
    find('.hit', text: '60')
    #expect(page).to have_content 'Name One: 60HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    visit('/play')
    #find('.hit', text: '60')
    expect(page).to have_content 'Name One: 60HP'
  end
end
