feature 'View hit comfirmation' do
  scenario 'confirm player 2 hit' do
    sign_in_and_play
    visit('/play')
    find_button('Attack').click
    visit('/attack')
    find('.hit-confirm', text: 'Name One Attacked Name Two')
  end
end
