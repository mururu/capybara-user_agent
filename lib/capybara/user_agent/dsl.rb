module Capybara
  module UserAgent
    module DSL
      def set_user_agent(type)
        Capybara.current_session.driver.header('User-Agent', Capybara::UserAgent.user_agents[type])
      end
    end
  end
end
