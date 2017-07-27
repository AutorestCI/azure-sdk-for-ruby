# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Run command operation response.
    #
    class RunCommandResult < OperationStatusResponse
      # @return Operation output data (raw JSON)
      attr_accessor :output


      #
      # Mapper for RunCommandResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunCommandResult',
          type: {
            name: 'Composite',
            class_name: 'RunCommandResult',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ApiError'
                }
              },
              output: {
                required: false,
                serialized_name: 'properties.output',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
