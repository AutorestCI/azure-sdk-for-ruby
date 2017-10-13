# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Discover protectable item properties.
    #
    class DiscoverProtectableItemRequestProperties

      include MsRestAzure

      # @return [String] The friendly name of the physical machine.
      attr_accessor :friendly_name

      # @return [String] The IP address of the physical machine to be
      # discovered.
      attr_accessor :ip_address

      # @return [String] The OS type on the physical machine.
      attr_accessor :os_type


      #
      # Mapper for DiscoverProtectableItemRequestProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiscoverProtectableItemRequestProperties',
          type: {
            name: 'Composite',
            class_name: 'DiscoverProtectableItemRequestProperties',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
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