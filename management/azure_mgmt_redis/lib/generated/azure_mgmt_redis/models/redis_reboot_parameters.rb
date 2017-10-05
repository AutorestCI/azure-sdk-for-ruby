# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Specifies which Redis node(s) to reboot.
    #
    class RedisRebootParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [RebootType] Which Redis node(s) to reboot. Depending on this
      # value data loss is possible. Possible values include: 'PrimaryNode',
      # 'SecondaryNode', 'AllNodes'
      attr_accessor :reboot_type

      # @return [Integer] If clustering is enabled, the ID of the shard to be
      # rebooted.
      attr_accessor :shard_id


      #
      # Mapper for RedisRebootParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisRebootParameters',
          type: {
            name: 'Composite',
            class_name: 'RedisRebootParameters',
            model_properties: {
              reboot_type: {
                required: true,
                serialized_name: 'rebootType',
                type: {
                  name: 'String'
                }
              },
              shard_id: {
                required: false,
                serialized_name: 'shardId',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
