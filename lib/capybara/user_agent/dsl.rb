module Capybara
  module UserAgent
    module DSL
      def set_user_agent(type)
        set_custom_user_agent(Capybara::UserAgent.user_agents[type])
      end

      def set_custom_user_agent(user_agent)
        Capybara.current_session.driver.header('User-Agent', user_agent)
      end
    end
  end
end
