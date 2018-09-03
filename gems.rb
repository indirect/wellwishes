source "https://rubygems.org"
ruby Pathname.new(__dir__).join(".ruby-version").read
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails", "~> 5.2.1"

gem "bootsnap", ">= 1.1.0", require: false
gem "puma", "~> 3.11"
gem "pg", "~> 1.1"
gem "webpacker", "~> 3.5"

group :development, :test do
  gem "pry-byebug", "~> 3.6.0"
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
end
