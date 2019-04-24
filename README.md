# motion-ios-devices

A simple Gem that makes building and running a RubyMotion iOS application on a specific device simple.

This gem was inspired by a blog post written by Dave Kimura of (Drifting Ruby)[https://www.driftingruby.com] you should check it out.

The intent is to provide some simple command line target to invoke specific devices when building and compiling RubyMotion/DragonRuby to the iOS simulator. I could never remember the exact syntax and precise string to start the simulator with a specific device and looking up the devices was annoyance and slowed down my workflow.

I found Dave Kimura's article (which I cannot locate) that showed how to create tasks in your Rakefile to do: 
```bash
 $ bundle exec rake iphone7
```
The article included some predefined tasks for various devices. I have been using this in my projects for some time, however I needed to expand the list, make it standard and make it public (so only the maintainers of the gem ever need to research the simulator device strings). The gem is very light-weight with no other dependencies to ensure no problems other than having the up-to-date devices occur from use.

This gem is ony suitable for RubyMotion iOS projects.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-ios-devices'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-ios-devices

## Usage

The gem allow the simple specification of the simulator target on the RubyMotion `rake` build command as follows:

```bash
 $ bundle exec rake iphone:7
```

The rake target is broken into 2 parts, the device class and the device model. The current device classes are `iphone` and `ipad`. To see what models are supported within a class of devices use the target `<device-class>:devices` for example:
```bash
 $ bundle exec rake iphone:devices
```
Which will produce a listing like:
```bash
You invoked iphone:devices

The full list of device targets under iphone are:

    iphone:7, iphone:7plus, iphone:x

```

*Note* the actual devices models will grow and change over time, the device list functionality enables you to determine what is currently available (and means you don't need to remember all the model names).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
