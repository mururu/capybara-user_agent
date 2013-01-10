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

  context 'ipad' do
    background do
      set_user_agent(:ipad) 
    end

    scenario 'you_scenario' do
    end
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
