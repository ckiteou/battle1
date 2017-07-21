def sign_in_and_play
  visit('/')
  fill_in('player_one', with: 'Name One')
  fill_in('player_two', with: 'Name Two')
  find_button('Submit').click
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
end
