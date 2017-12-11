# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes Windows configuration of the OS Profile.
    #
    class LinuxConfiguration

      include MsRestAzure

      # @return [Boolean] Specifies whether password authentication should be
      # disabled.
      attr_accessor :disable_password_authentication

      # @return [SshConfiguration] The SSH configuration for linux VMs.
      attr_accessor :ssh


      #
      # Mapper for LinuxConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LinuxConfiguration',
          type: {
            name: 'Composite',
            class_name: 'LinuxConfiguration',
            model_properties: {
              disable_password_authentication: {
                required: false,
                serialized_name: 'disablePasswordAuthentication',
                type: {
                  name: 'Boolean'
                }
              },
              ssh: {
                required: false,
                serialized_name: 'ssh',
                type: {
                  name: 'Composite',
                  class_name: 'SshConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
