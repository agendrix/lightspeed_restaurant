require 'lightspeed_restaurant/base'
require 'lightspeed_restaurant/operations/list'

module LightspeedRestaurant
  class Employee < LightspeedRestaurant::Base
    extend Operations::List

    def self.resource_name
      'Employee'
    end

    def self.resource_path
      "/rest/labour/#{resource_name.downcase}"
    end
  end
end
