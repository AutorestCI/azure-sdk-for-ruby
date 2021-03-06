# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Base class for provider specific input
    #
    class PolicyProviderSpecificInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["HyperVReplicaAzure"] = "HyperVReplicaAzurePolicyInput"
      @@discriminatorMap["HyperVReplica2012"] = "HyperVReplicaPolicyInput"
      @@discriminatorMap["HyperVReplica2012R2"] = "HyperVReplicaBluePolicyInput"
      @@discriminatorMap["InMageAzureV2"] = "InMageAzureV2PolicyInput"
      @@discriminatorMap["InMage"] = "InMagePolicyInput"
      @@discriminatorMap["A2A"] = "A2APolicyCreationInput"
      @@discriminatorMap["VMwareCbt"] = "VMwareCbtPolicyCreationInput"

      def initialize
        @instanceType = "PolicyProviderSpecificInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for PolicyProviderSpecificInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyProviderSpecificInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'PolicyProviderSpecificInput',
            class_name: 'PolicyProviderSpecificInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
