module Cms
  module Factory
    def build(class_name, &block)
      resource = Class.new(Cms::Resource, &block)
      Cms.const_set(class_name, resource)

      controller = Class.new(Cms::ResourceController, &block)
      Cms.const_set("#{class_name.pluralize}Controller", controller)
    end
    module_function :build

    def routes(router)
      router.instance_eval do
        namespace :cms, path: :admin do
          get '/posts', to: 'posts#index'
        end
      end
    end
    module_function :routes
  end
end