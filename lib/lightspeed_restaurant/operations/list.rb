module LightspeedRestaurant
  module Operations
    module List
      def list(params = {})
        response = JSON.parse(LightspeedRestaurant.get(resource_path, {}, params))
        response = response[response.keys.first] if response.is_a?(Hash)
        instantiate(response)
      end
      alias all list

      private

      def instantiate(records)
        records.map do |record|
          is_a?(Class) ? new(record) : self.class.new(record)
        end
      end
    end
  end
end
