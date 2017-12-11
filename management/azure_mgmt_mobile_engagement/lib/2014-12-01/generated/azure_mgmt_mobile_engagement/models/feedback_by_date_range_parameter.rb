# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class FeedbackByDateRangeParameter

      include MsRestAzure

      # @return [String]
      attr_accessor :container_url

      # @return [String] A description of the export task.
      attr_accessor :description

      # @return [CampaignType] Possible values include: 'Announcement',
      # 'DataPush', 'NativePush', 'Poll'
      attr_accessor :campaign_type

      # @return [DateTime] The RFC3339 date-time start of the period for
      # inclusion of active campaigns.
      attr_accessor :campaign_window_start

      # @return [DateTime] The RFC3339 date-time end of the period for
      # inclusion of active campaigns.
      attr_accessor :campaign_window_end

      # @return [ExportFormat] The format of the exported data. Possible values
      # include: 'JsonBlob', 'CsvBlob'
      attr_accessor :export_format


      #
      # Mapper for FeedbackByDateRangeParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'feedbackByDateRangeParameter',
          type: {
            name: 'Composite',
            class_name: 'FeedbackByDateRangeParameter',
            model_properties: {
              container_url: {
                required: true,
                serialized_name: 'containerUrl',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              campaign_type: {
                required: true,
                serialized_name: 'campaignType',
                type: {
                  name: 'Enum',
                  module: 'CampaignType'
                }
              },
              campaign_window_start: {
                required: true,
                serialized_name: 'campaignWindowStart',
                type: {
                  name: 'DateTime'
                }
              },
              campaign_window_end: {
                required: true,
                serialized_name: 'campaignWindowEnd',
                type: {
                  name: 'DateTime'
                }
              },
              export_format: {
                required: true,
                serialized_name: 'exportFormat',
                type: {
                  name: 'Enum',
                  module: 'ExportFormat'
                }
              }
            }
          }
        }
      end
    end
  end
end
