module Cms
  class ResourceController < ApplicationController
    def index
      render plain: 'Hell !!!'
    end
  end
end