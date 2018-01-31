# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Subscriptions::Mgmt::V2016_06_01
  module Models
    #
    # Location list operation response.
    #
    class LocationListResult

      include MsRestAzure

      # @return [Array<Location>] An array of locations.
      attr_accessor :value


      #
      # Mapper for LocationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LocationListResult',
          type: {
            name: 'Composite',
            class_name: 'LocationListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
