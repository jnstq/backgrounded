require 'activesupport'

module Backgrounded
  mattr_accessor :handler
  def self.handler
    @@handler ||= Backgrounded::Handler::InprocessHandler.new
  end

  autoload :Handler, 'handler'

  module Model
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def backgrounded(*methods)
        methods.each do |method|
          method_basename, punctuation = method.to_s.sub(/([?!=])$/, ''), $1
          backgrounded_module.module_eval do
            define_method :"#{method_basename}_backgrounded#{punctuation}" do |*args|
              Backgrounded.handler.request(self, method, *args)
            end
          end
        end
        include Backgrounded::Model::InstanceMethods
        extend Backgrounded::Model::SingletonMethods
      end
      private
      def backgrounded_module
        unless const_defined?(:BackgroundedMethods)
          backgrounded_module = const_set(:BackgroundedMethods, Module.new)
          include backgrounded_module
        end
        const_get(:BackgroundedMethods)
      end
    end

    module SingletonMethods
    end

    module InstanceMethods
    end
  end
end

Object.send(:include, Backgrounded::Model)
