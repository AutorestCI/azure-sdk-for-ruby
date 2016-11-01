# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
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
require 'generated/azure_mgmt_recovery_services/module_definition'
require 'ms_rest_azure'

module Azure::ARM::RecoveryServices
  autoload :Vaults,                                             'generated/azure_mgmt_recovery_services/vaults.rb'
  autoload :RecoveryServicesClient,                             'generated/azure_mgmt_recovery_services/recovery_services_client.rb'

  module Models
    autoload :VaultList,                                          'generated/azure_mgmt_recovery_services/models/vault_list.rb'
    autoload :VaultProperties,                                    'generated/azure_mgmt_recovery_services/models/vault_properties.rb'
    autoload :Sku,                                                'generated/azure_mgmt_recovery_services/models/sku.rb'
    autoload :Vault,                                              'generated/azure_mgmt_recovery_services/models/vault.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_recovery_services/models/sku_name.rb'
  end
end