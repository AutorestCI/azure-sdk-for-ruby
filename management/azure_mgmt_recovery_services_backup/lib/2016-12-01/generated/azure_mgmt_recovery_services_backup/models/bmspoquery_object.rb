# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Filters to list items that can be backed up.
    #
    class BMSPOQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type. Possible values
      # include: 'Invalid', 'AzureIaasVM', 'MAB', 'DPM', 'AzureBackupServer',
      # 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] Backup status query parameter.
      attr_accessor :status

      # @return [String] Friendly name.
      attr_accessor :friendly_name


      #
      # Mapper for BMSPOQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BMSPOQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSPOQueryObject',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
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
