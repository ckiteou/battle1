feature 'Testing player name entry' do
  scenario 'Can accept two players names via a form and submit it' do
    sign_in_and_play
    visit('/play')
    page.has_content?('Name One')
    page.has_content?('Name Two')
  end
end
