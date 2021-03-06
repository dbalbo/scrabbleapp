require('capybara/spec')
require('./app')
Capybara.app = Sinatra::Application

describe("the scrabbleapp path", {:type => :feature}) do
  it('processes the user entry and returns scrabble score') do
      visit('/')
      fill_in('title', :with => 'pie')
      click_button('Take me to score!')
      expect(page).to have_content(5))
  end
end
