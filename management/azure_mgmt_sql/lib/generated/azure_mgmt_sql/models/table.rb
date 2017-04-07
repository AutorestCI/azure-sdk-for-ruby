# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents a database table.
    #
    class Table < MsRestAzure::Resource

      include MsRestAzure

      # @return [TableType] The type of database table. Possible values
      # include: 'BaseTable', 'View'
      attr_accessor :table_type

      # @return [Array<Column>] The columns from this table.
      attr_accessor :columns

      # @return [Array<RecommendedIndex>] The recommended indices for this
      # table.
      attr_accessor :recommended_indexes


      #
      # Mapper for Table class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Table',
          type: {
            name: 'Composite',
            class_name: 'Table',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              table_type: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tableType',
                type: {
                  name: 'Enum',
                  module: 'TableType'
                }
              },
              columns: {
                required: false,
                read_only: true,
                serialized_name: 'properties.columns',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Column'
                      }
                  }
                }
              },
              recommended_indexes: {
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendedIndexes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecommendedIndexElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedIndex'
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