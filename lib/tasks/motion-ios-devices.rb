# -*- encoding : utf-8 -*-
require 'rake' unless defined? Rake

# module IB
#   class RakeTask
#     class << self
#       attr_writer :created
#       def created?
#         @@created ||= false
#       end
#     end
#     include Rake::DSL
#
#     def initialize
#       require 'ib/project'
#       @@created = true
#
#       @project = IB::Project.new
#       yield @project if block_given?
#       define_tasks
#     end
#
#     def define_tasks
#       namespace :ib do
#         task :project do
#           @project.write
#         end
#       end
#     end
#   end
# end

namespace :iphone do |ns|
  desc "Run simulator on iPhone 7"
  task :"7" do
    exec 'bundle exec rake device_name="iPhone 7"'
  end

  desc "Run simulator on iPhone 7 Plus"
  task :"7plus" do
    exec 'bundle exec rake device_name="iPhone 7 Plus"'
  end

  desc "Run simulator on iPhone X"
  task :x do
    exec 'bundle exec rake device_name="iPhone X"'
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

  desc "Run simulator on iPad Air"
  task :air do
    exec 'bundle exec rake device_name="iPad Air"'
  end

  desc "Run simulator on iPad Pro 9.7"
  task :pro9 do
    exec 'bundle exec rake device_name="iPad Pro (9.7-inch)"'
  end

  desc "Run simulator on iPad Pro 10"
  task :pro10 do
    exec 'bundle exec rake device_name="iPad Pro (10.5-inch)"'
  end

  desc "Run simulator on iPad Pro 12"
  task :pro12 do
    exec 'bundle exec rake device_name="iPad Pro (12.9-inch)"'
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