# Coding Challenge Kata

This kata was completed for a Test-Driven Development (TDD) coding challenge. It was written in Ruby (v2.5.3) and tested with RSpec. I won't explain the challenge/implementation details here, for fear of ruining the fun for future applicants, but if you're reading this you probably already know the details anyways. So lets get started :)

If you have a Ruby environment manager installed on your computer, running the tests should hopefully be pretty simple. Clone the git repo into the directory of your choice on your local machine, CD into said directory in the terminal, and run the following commands:

```sh
# install Gemfile dependencies
bundle install

# run the tests
bundle exec rspec spec
```

If at this point you cannot run the specs, please read on to install a few basic developer tools and/or configure the proper version of Ruby.

## Coding Environment Configuration

**NOTE: If you've already tried to install a development environment, following these instructions may cause compatibility issues. For example, RVM is not compatible with rbenv, and MacPorts is not compatible with Homebrew.**

### macOS

To get setup we will need rbenv (a Ruby environment manager), which requires [Homebrew](https://brew.sh/) (a 3rd-party package manager for macOS), which in turn requires Xcode (a library of developer tools provided by Apple).

#### Xcode

Install the Xcode command line tools by running the following from the console:

```sh
$ xcode-select --install
```

The installation requires you to agree to the Xcode license. Start the Xcode app, click "Agree", allow it to finish, then go ahead and quit the Xcode app.

#### Homebrew

Next, enter the following in your terminal to download and install Homebrew:

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

You will be given a list of dependencies that will be installed and prompted to continue or abort. Press `RETURN` to continue.

#### rbenv, Ruby and Gems

Now we install rbenv, then use it to install the desired version of Ruby. Then we can finally install the gems and run the tests.

```sh
# install rbenv
$ brew install rbenv

# Set up rbenv in your shell.
$ rbenv init

# Install the current stable version of Ruby
$ rbenv install 2.5.3

# Set version 2.5.3 to be the global default
$ rbenv global 2.5.3

# Update the environment to your configuration
$ rbenv rehash

# Install Bundler gem to manage project dependencies
$ gem install bundler
```

By now we should be able to refer back to the top and run those specs.
For more details on what `rbenv init` actually does, visit the rbenv [Github docs](https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell).

### Windows and Linux 

If you are using a Linux machine you will not be able to install Xcode or homebrew. Instead please follow [these git installation directions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and then [these rbenv installation directions](https://github.com/rbenv/rbenv#basic-github-checkout) (up to and including "Installing Ruby versions") to download rbenv using git. Then use the rbenv commands above to install Ruby 2.5.3 and the Bundler gem.

If you are using Windows, check out [rubyinstaller.org](https://rubyinstaller.org/downloads/).

## Thank you for your time, I look forward to your feedback!