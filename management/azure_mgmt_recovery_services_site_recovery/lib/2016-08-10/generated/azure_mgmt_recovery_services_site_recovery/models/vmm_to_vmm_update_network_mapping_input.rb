# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Update network mappings input properties/behaviour specific to vmm to
    # vmm.
    #
    class VmmToVmmUpdateNetworkMappingInput < FabricSpecificUpdateNetworkMappingInput

      include MsRestAzure


      def initialize
        @instanceType = "VmmToVmm"
      end

      attr_accessor :instanceType


      #
      # Mapper for VmmToVmmUpdateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VmmToVmm',
          type: {
            name: 'Composite',
            class_name: 'VmmToVmmUpdateNetworkMappingInput',
            model_properties: {
              instanceType: {
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end