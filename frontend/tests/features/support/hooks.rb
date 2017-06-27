Before do
    @login = LoginPage.new
    @logout = HomeLogout.new
end 

After do |scenario|

    @name = scenario.name.gsub(' ', '_')
    @name = @name.gsub(',', '')
    @name = @name.gsub('#', '')
    @name = @name.gsub('(', '')
    @name = @name.gsub(')', '')

    @target = "results/shots/#{@name.downcase!}.png"

    
    #  if scenario.failed?
        page.save_screenshot(@target)
        embed(@target, 'image/png', 'Clique aqui para ver a evidência')    
    # end

    #     if BROWSER.eql?('headless')
    #     Capybara.current_session.driver.quit
    # end

end