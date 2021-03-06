# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # Data Lake Store account information to update
    #
    class DataLakeStoreAccountUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [FirewallState] The current state of the IP address firewall
      # for this Data Lake store account. Disabling the firewall does not
      # remove existing rules, they will just be ignored until the firewall is
      # re-enabled. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :firewall_state

      # @return [TrustedIdProviderState] The current state of the trusted
      # identity provider feature for this Data Lake store account. Disabling
      # trusted identity provider functionality does not remove the providers,
      # they will just be ignored until this feature is re-enabled. Possible
      # values include: 'Enabled', 'Disabled'
      attr_accessor :trusted_id_provider_state

      # @return [String] the default owner group for all new folders and files
      # created in the Data Lake Store account.
      attr_accessor :default_group

      # @return [TierType] the commitment tier to use for next month. Possible
      # values include: 'Consumption', 'Commitment_1TB', 'Commitment_10TB',
      # 'Commitment_100TB', 'Commitment_500TB', 'Commitment_1PB',
      # 'Commitment_5PB'
      attr_accessor :new_tier

      # @return [FirewallAllowAzureIpsState] The current state of allowing or
      # disallowing IPs originating within Azure through the firewall. If the
      # firewall is disabled, this is not enforced. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :firewall_allow_azure_ips

      # @return [UpdateEncryptionConfig] Used for rotation of user managed Key
      # Vault keys. Can only be used to rotate a user managed encryption Key
      # Vault key.
      attr_accessor :encryption_config


      #
      # Mapper for DataLakeStoreAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataLakeStoreAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'DataLakeStoreAccountUpdateParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              firewall_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.firewallState',
                type: {
                  name: 'Enum',
                  module: 'FirewallState'
                }
              },
              trusted_id_provider_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.trustedIdProviderState',
                type: {
                  name: 'Enum',
                  module: 'TrustedIdProviderState'
                }
              },
              default_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultGroup',
                type: {
                  name: 'String'
                }
              },
              new_tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.newTier',
                type: {
                  name: 'Enum',
                  module: 'TierType'
                }
              },
              firewall_allow_azure_ips: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.firewallAllowAzureIps',
                type: {
                  name: 'Enum',
                  module: 'FirewallAllowAzureIpsState'
                }
              },
              encryption_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryptionConfig',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateEncryptionConfig'
                }
              }
            }
          }
        }
      end
    end
  end
end
