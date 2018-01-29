# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes an IoT Hub input data source that contains stream data.
    #
    class IoTHubStreamInputDataSource < StreamInputDataSource

      include MsRestAzure


      def initialize
        @type = "Microsoft.Devices/IotHubs"
      end

      attr_accessor :type

      # @return [String] The name or the URI of the IoT Hub. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :iot_hub_namespace

      # @return [String] The shared access policy name for the IoT Hub. This
      # policy must contain at least the Service connect permission. Required
      # on PUT (CreateOrReplace) requests.
      attr_accessor :shared_access_policy_name

      # @return [String] The shared access policy key for the specified shared
      # access policy. Required on PUT (CreateOrReplace) requests.
      attr_accessor :shared_access_policy_key

      # @return [String] The name of an IoT Hub Consumer Group that should be
      # used to read events from the IoT Hub. If not specified, the input uses
      # the Iot Hub’s default consumer group.
      attr_accessor :consumer_group_name

      # @return [String] The IoT Hub endpoint to connect to (ie.
      # messages/events, messages/operationsMonitoringEvents, etc.).
      attr_accessor :endpoint


      #
      # Mapper for IoTHubStreamInputDataSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Devices/IotHubs',
          type: {
            name: 'Composite',
            class_name: 'IoTHubStreamInputDataSource',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              iot_hub_namespace: {
                required: false,
                serialized_name: 'properties.iotHubNamespace',
                type: {
                  name: 'String'
                }
              },
              shared_access_policy_name: {
                required: false,
                serialized_name: 'properties.sharedAccessPolicyName',
                type: {
                  name: 'String'
                }
              },
              shared_access_policy_key: {
                required: false,
                serialized_name: 'properties.sharedAccessPolicyKey',
                type: {
                  name: 'String'
                }
              },
              consumer_group_name: {
                required: false,
                serialized_name: 'properties.consumerGroupName',
                type: {
                  name: 'String'
                }
              },
              endpoint: {
                required: false,
                serialized_name: 'properties.endpoint',
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
