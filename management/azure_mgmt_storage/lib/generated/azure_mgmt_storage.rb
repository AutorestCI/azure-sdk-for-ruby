# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_storage/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Storage
  autoload :Operations,                                         'generated/azure_mgmt_storage/operations.rb'
  autoload :StorageAccounts,                                    'generated/azure_mgmt_storage/storage_accounts.rb'
  autoload :UsageOperations,                                    'generated/azure_mgmt_storage/usage_operations.rb'
  autoload :StorageManagementClient,                            'generated/azure_mgmt_storage/storage_management_client.rb'

  module Models
    autoload :Identity,                                           'generated/azure_mgmt_storage/models/identity.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_storage/models/operation_display.rb'
    autoload :StorageAccountCreateParameters,                     'generated/azure_mgmt_storage/models/storage_account_create_parameters.rb'
    autoload :MetricSpecification,                                'generated/azure_mgmt_storage/models/metric_specification.rb'
    autoload :Endpoints,                                          'generated/azure_mgmt_storage/models/endpoints.rb'
    autoload :Operation,                                          'generated/azure_mgmt_storage/models/operation.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_storage/models/operation_list_result.rb'
    autoload :CheckNameAvailabilityResult,                        'generated/azure_mgmt_storage/models/check_name_availability_result.rb'
    autoload :StorageAccountKey,                                  'generated/azure_mgmt_storage/models/storage_account_key.rb'
    autoload :CustomDomain,                                       'generated/azure_mgmt_storage/models/custom_domain.rb'
    autoload :StorageAccountListResult,                           'generated/azure_mgmt_storage/models/storage_account_list_result.rb'
    autoload :EncryptionServices,                                 'generated/azure_mgmt_storage/models/encryption_services.rb'
    autoload :StorageAccountListKeysResult,                       'generated/azure_mgmt_storage/models/storage_account_list_keys_result.rb'
    autoload :Encryption,                                         'generated/azure_mgmt_storage/models/encryption.rb'
    autoload :StorageAccountRegenerateKeyParameters,              'generated/azure_mgmt_storage/models/storage_account_regenerate_key_parameters.rb'
    autoload :IPRule,                                             'generated/azure_mgmt_storage/models/iprule.rb'
    autoload :StorageAccountUpdateParameters,                     'generated/azure_mgmt_storage/models/storage_account_update_parameters.rb'
    autoload :Dimension,                                          'generated/azure_mgmt_storage/models/dimension.rb'
    autoload :UsageName,                                          'generated/azure_mgmt_storage/models/usage_name.rb'
    autoload :StorageAccountCheckNameAvailabilityParameters,      'generated/azure_mgmt_storage/models/storage_account_check_name_availability_parameters.rb'
    autoload :Usage,                                              'generated/azure_mgmt_storage/models/usage.rb'
    autoload :EncryptionService,                                  'generated/azure_mgmt_storage/models/encryption_service.rb'
    autoload :UsageListResult,                                    'generated/azure_mgmt_storage/models/usage_list_result.rb'
    autoload :VirtualNetworkRule,                                 'generated/azure_mgmt_storage/models/virtual_network_rule.rb'
    autoload :ServiceSpecification,                               'generated/azure_mgmt_storage/models/service_specification.rb'
    autoload :AccountSasParameters,                               'generated/azure_mgmt_storage/models/account_sas_parameters.rb'
    autoload :KeyVaultProperties,                                 'generated/azure_mgmt_storage/models/key_vault_properties.rb'
    autoload :ListAccountSasResponse,                             'generated/azure_mgmt_storage/models/list_account_sas_response.rb'
    autoload :Sku,                                                'generated/azure_mgmt_storage/models/sku.rb'
    autoload :ServiceSasParameters,                               'generated/azure_mgmt_storage/models/service_sas_parameters.rb'
    autoload :NetworkRuleSet,                                     'generated/azure_mgmt_storage/models/network_rule_set.rb'
    autoload :ListServiceSasResponse,                             'generated/azure_mgmt_storage/models/list_service_sas_response.rb'
    autoload :StorageAccount,                                     'generated/azure_mgmt_storage/models/storage_account.rb'
    autoload :Reason,                                             'generated/azure_mgmt_storage/models/reason.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_storage/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_storage/models/sku_tier.rb'
    autoload :KeySource,                                          'generated/azure_mgmt_storage/models/key_source.rb'
    autoload :Action,                                             'generated/azure_mgmt_storage/models/action.rb'
    autoload :State,                                              'generated/azure_mgmt_storage/models/state.rb'
    autoload :Bypass,                                             'generated/azure_mgmt_storage/models/bypass.rb'
    autoload :DefaultAction,                                      'generated/azure_mgmt_storage/models/default_action.rb'
    autoload :AccessTier,                                         'generated/azure_mgmt_storage/models/access_tier.rb'
    autoload :Kind,                                               'generated/azure_mgmt_storage/models/kind.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_storage/models/provisioning_state.rb'
    autoload :AccountStatus,                                      'generated/azure_mgmt_storage/models/account_status.rb'
    autoload :KeyPermission,                                      'generated/azure_mgmt_storage/models/key_permission.rb'
    autoload :UsageUnit,                                          'generated/azure_mgmt_storage/models/usage_unit.rb'
    autoload :Services,                                           'generated/azure_mgmt_storage/models/services.rb'
    autoload :SignedResourceTypes,                                'generated/azure_mgmt_storage/models/signed_resource_types.rb'
    autoload :Permissions,                                        'generated/azure_mgmt_storage/models/permissions.rb'
    autoload :HttpProtocol,                                       'generated/azure_mgmt_storage/models/http_protocol.rb'
    autoload :SignedResource,                                     'generated/azure_mgmt_storage/models/signed_resource.rb'
  end
end
