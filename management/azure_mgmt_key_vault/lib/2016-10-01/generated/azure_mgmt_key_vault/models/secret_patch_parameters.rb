# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2016_10_01
  module Models
    #
    # Parameters for patching a secret
    #
    class SecretPatchParameters

      include MsRestAzure

      # @return [Hash{String => String}] The tags that will be assigned to the
      # secret.
      attr_accessor :tags

      # @return [SecretPatchProperties] Properties of the secret
      attr_accessor :properties


      #
      # Mapper for SecretPatchParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SecretPatchParameters',
          type: {
            name: 'Composite',
            class_name: 'SecretPatchParameters',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'SecretPatchProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
