# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Query parameters to fetch list of backup engines.
    #
    class BMSBackupEnginesQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type for the backup
      # engine. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] Friendly name of the backup engine.
      attr_accessor :friendly_name

      # @return [String] Attribute to add extended info.
      attr_accessor :expand


      #
      # Mapper for BMSBackupEnginesQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSBackupEnginesQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSBackupEnginesQueryObject',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              expand: {
                required: false,
                serialized_name: 'expand',
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
