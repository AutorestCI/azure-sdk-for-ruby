# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # The properties that are associated with a blob data source.
    #
    class BlobDataSourceProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<StorageAccount>] A list of one or more Azure Storage
      # accounts. Required on PUT (CreateOrReplace) requests.
      attr_accessor :storage_accounts

      # @return [String] The name of a container within the associated Storage
      # account. This container contains either the blob(s) to be read from or
      # written to. Required on PUT (CreateOrReplace) requests.
      attr_accessor :container

      # @return [String] The blob path pattern. Not a regular expression. It
      # represents a pattern against which blob names will be matched to
      # determine whether or not they should be included as input or output to
      # the job. See
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-input
      # or
      # https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output
      # for a more detailed explanation and example.
      attr_accessor :path_pattern

      # @return [String] The date format. Wherever {date} appears in
      # pathPattern, the value of this property is used as the date format
      # instead.
      attr_accessor :date_format

      # @return [String] The time format. Wherever {time} appears in
      # pathPattern, the value of this property is used as the time format
      # instead.
      attr_accessor :time_format


      #
      # Mapper for BlobDataSourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BlobDataSourceProperties',
          type: {
            name: 'Composite',
            class_name: 'BlobDataSourceProperties',
            model_properties: {
              storage_accounts: {
                required: false,
                serialized_name: 'storageAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StorageAccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccount'
                      }
                  }
                }
              },
              container: {
                required: false,
                serialized_name: 'container',
                type: {
                  name: 'String'
                }
              },
              path_pattern: {
                required: false,
                serialized_name: 'pathPattern',
                type: {
                  name: 'String'
                }
              },
              date_format: {
                required: false,
                serialized_name: 'dateFormat',
                type: {
                  name: 'String'
                }
              },
              time_format: {
                required: false,
                serialized_name: 'timeFormat',
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
