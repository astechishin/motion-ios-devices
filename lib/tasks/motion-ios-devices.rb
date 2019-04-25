# -*- encoding : utf-8 -*-
require 'rake' unless defined? Rake

namespace :iphone do |ns|
  desc "Run simulator on iPhone 5s"
  task :"5s" do
    exec 'bundle exec rake device_name="iPhone 5s"'
  end

  desc "Run simulator on iPhone SE"
  task :"SE" do
    exec 'bundle exec rake device_name="iPhone SE"'
  end

  desc "Run simulator on iPhone 6"
  task :"6" do
    exec 'bundle exec rake device_name="iPhone 6"'
  end

  desc "Run simulator on iPhone 6 Plus"
  task :"6plus" do
    exec 'bundle exec rake device_name="iPhone 6 Plus"'
  end

  desc "Run simulator on iPhone 6s"
  task :"6s" do
    exec 'bundle exec rake device_name="iPhone 6s"'
  end

  desc "Run simulator on iPhone 6s Plus"
  task :"6splus" do
    exec 'bundle exec rake device_name="iPhone 6s Plus"'
  end

  desc "Run simulator on iPhone 7"
  task :"7" do
    exec 'bundle exec rake device_name="iPhone 7"'
  end

  desc "Run simulator on iPhone 7 Plus"
  task :"7plus" do
    exec 'bundle exec rake device_name="iPhone 7 Plus"'
  end
# iPhone 8
# iPhone 8 Plus
  desc "Run simulator on iPhone 8"
  task :"8" do
    exec 'bundle exec rake device_name="iPhone 8"'
  end

  desc "Run simulator on iPhone 8 Plus"
  task :"8plus" do
    exec 'bundle exec rake device_name="iPhone 8 Plus"'
  end

  desc "Run simulator on iPhone X"
  task :"X" do
    exec 'bundle exec rake device_name="iPhone X"'
  end

  desc "Run simulator on iPhone XR"
  task :"XR" do
    exec 'bundle exec rake device_name="iPhone XR"'
  end

  desc "Run simulator on iPhone XS"
  task :"XS" do
    exec 'bundle exec rake device_name="iPhone XS"'
  end

  desc "Run simulator on iPhone XS Max"
  task :"XSmax" do
    exec 'bundle exec rake device_name="iPhone XS Max"'
  end

  desc 'Get defined devices for iphone'
  task :devices do |t|
    puts "You invoked #{t.name}"
    puts
    puts "The full list of device targets under iphone are:"
    puts
    puts "    " + (ns.tasks.delete_if { |tn| t.name.eql?(tn.to_s) }).join(', ')
    puts "\n\n"
  end
end

namespace :ipad do |ns|
  desc "Run simulator in iPad Retina"
  task :retina do
    exec 'bundle exec rake device_name="iPad Retina"'
  end

  desc "Run simulator in iPad (latest version)"
  task :latest do
    exec 'bundle exec rake device_name="iPad (6th generation)"'
  end

  desc "Run simulator on iPad Air"
  task :air do
    exec 'bundle exec rake device_name="iPad Air"'
  end

  desc "Run simulator on iPad Air 2"
  task :air2 do
    exec 'bundle exec rake device_name="iPad Air 2"'
  end

  desc "Run simulator on iPad Pro 9.7"
  task :pro9 do
    exec 'bundle exec rake device_name="iPad Pro (9.7-inch)"'
  end

  desc "Run simulator on iPad Pro 10"
  task :pro10 do
    exec 'bundle exec rake device_name="iPad Pro (10.5-inch)"'
  end

  desc "Run simulator on iPad Pro 11"
  task :pro11 do
    exec 'bundle exec rake device_name="iPad Pro (11-inch)"'
  end

  desc "Run simulator on iPad Pro 12"
  task :pro12 do
    exec 'bundle exec rake device_name="iPad Pro (12.9-inch)"'
  end

  desc "Run simulator on iPad Pro 12-2nd gen"
  task :"pro12-2" do
    exec 'bundle exec rake device_name="iPad Pro (12.9-inch) (2nd generation)"'
  end

  desc "Run simulator on iPad Pro 12-3rd gen"
  task :"pro12-3" do
    exec 'bundle exec rake device_name="iPad Pro (12.9-inch) (3rd generation)"'
  end

  desc 'Get defined devices for ipad'
  task :devices do |t|
    puts "You invoked #{t.name}"
    puts
    puts "The full list of device targets under ipad are:"
    puts
    puts "    " + (ns.tasks.delete_if { |tn| t.name.eql?(tn.to_s) }).join(',   ')
    puts "\n\n"
  end
end
