feature 'View hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    visit('/play')
    find('.hit', text: '60')
  end
end
