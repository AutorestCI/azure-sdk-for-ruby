# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The time.
    #
    class Time

      include MsRestAzure

      # @return [Integer] The hour.
      attr_accessor :hours

      # @return [Integer] The minute.
      attr_accessor :minutes

      # @return [Integer] The second.
      attr_accessor :seconds


      #
      # Mapper for Time class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Time',
          type: {
            name: 'Composite',
            class_name: 'Time',
            model_properties: {
              hours: {
                required: true,
                serialized_name: 'hours',
                constraints: {
                  InclusiveMaximum: 23,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              minutes: {
                required: true,
                serialized_name: 'minutes',
                constraints: {
                  InclusiveMaximum: 59,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              seconds: {
                required: true,
                serialized_name: 'seconds',
                constraints: {
                  InclusiveMaximum: 59,
                  InclusiveMinimum: 0
                },
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
