feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    visit('/play')
    find_button('Attack').click
    visit('/attack')
    #find('.hit-confirm', text: 'Name One Attacked Name Two'
    #<h2 class="hit-confirm"><%= @game.player_1.name %> <span style="color: red; margin: 0 2em 0 2em;">Attacked</span> <%= @game.player_2.name %></h2>
    #<p class="hit"><%= @game.player_2.name %>: <%= @game.player_2.hit_points %>HP</p><p class="hit"><%= @game.player_2.name %>: <%= @game.player_2.hit_points %>HP</p>
    #<p><%= @game.current_turn.name %>'s turn</p>
    expect(page).to have_content 'Name One Attacked Name Two'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Name Two: 60HP'
    expect(page).to have_content 'Name Two: 50HP'
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Name Two Attacked Name One'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'Name One: 60HP'
    expect(page).to have_content 'Name One: 50HP'
  end
end
