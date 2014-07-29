module Capybara
  module UserAgent
    module DSL
      def set_user_agent(type)
        set_custom_user_agent(Capybara::UserAgent.user_agents[type])
      end

      def set_custom_user_agent(user_agent)
        if driver.respond_to?(:add_headers)
          driver.add_headers('User-Agent' => user_agent)
        else
          driver.header('User-Agent', user_agent)
        end
      end

      private

      def driver
        Capybara.current_session.driver
      end
    end
  end
end
