# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes a set of certificates which are all in the same Key Vault.
    #
    class VaultSecretGroup

      include MsRestAzure

      # @return [SubResource] The Relative URL of the Key Vault containing all
      # of the certificates in VaultCertificates.
      attr_accessor :source_vault

      # @return [Array<VaultCertificate>] The list of key vault references in
      # SourceVault which contain certificates.
      attr_accessor :vault_certificates


      #
      # Mapper for VaultSecretGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultSecretGroup',
          type: {
            name: 'Composite',
            class_name: 'VaultSecretGroup',
            model_properties: {
              source_vault: {
                required: false,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              vault_certificates: {
                required: false,
                serialized_name: 'vaultCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VaultCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VaultCertificate'
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
