# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The response to a list geo backup policies request.
    #
    class GeoBackupPolicyListResult
      # @return [Array<GeoBackupPolicy>] The list of geo backup policies.
      attr_accessor :value


      #
      # Mapper for GeoBackupPolicyListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GeoBackupPolicyListResult',
          type: {
            name: 'Composite',
            class_name: 'GeoBackupPolicyListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'GeoBackupPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GeoBackupPolicy'
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
