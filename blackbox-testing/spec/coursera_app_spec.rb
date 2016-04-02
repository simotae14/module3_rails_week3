Capybara.default_driver = :selenium
# Capybara.default_driver = :poltergeist

# definisco la mia app
Capybara.app_host = "https://cerca-coursera-jhu.herokuapp.com/"

describe "Coursera App" do
  describe "visita root" do
    before { visit '/' }
    
    # scrivo i iveri e propri test
    it "mostra 'Johns Hopkins' (default)" do
      expect(page)to have_content 'Johns Hopkins'
    end
  end
end