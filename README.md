# Capybara::UserAgent

## Installation

Add this line to your application's Gemfile:

    gem 'capybara-user_agent'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-user_agent

## Usage

### Rspec

in your `spec_helper`

```ruby
require 'capybara/user_agent'

Capybara::UserAgent.add_user_agents(your_browser: 'your_user_agent/1.0')

RSpec.configure do |config|
  config.include Capybara::UserAgent::DSL
end
```

Example:

```ruby
feature 'your_feature' do
  context 'iphone' do
    background do
      set_user_agent(:iphone)
    end

    scenario 'your_scenario' do
    end
  end

  context 'your_browser' do
    background do
      set_user_agent(:your_browser)
    end

    scenario 'your_scenario' do
    end
  end

  context 'your_browser2' do
    background do
      set_custom_user_agent('your_user_agent/2.0')
    end

    scenario 'your_scenario' do
    end
  end
end
```

### Now Available UserAgents

* iphone
* ipod
* ipad
* android
* android_tablet
* windows_phone
* black_berry
* ie7
* ie8
* ie9
* ie10
* chrome

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
