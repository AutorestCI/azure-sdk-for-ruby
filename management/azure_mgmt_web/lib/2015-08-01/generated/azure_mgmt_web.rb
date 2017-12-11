# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require '2015-08-01/generated/azure_mgmt_web/module_definition'
require 'ms_rest_azure'

module Azure::Web::Mgmt::V2015_08_01
  autoload :AppServiceCertificateOrders,                        '2015-08-01/generated/azure_mgmt_web/app_service_certificate_orders.rb'
  autoload :WebSiteManagementClient,                            '2015-08-01/generated/azure_mgmt_web/web_site_management_client.rb'

  module Models
    autoload :CloningInfo,                                        '2015-08-01/generated/azure_mgmt_web/models/cloning_info.rb'
    autoload :HostingEnvironmentProfile,                          '2015-08-01/generated/azure_mgmt_web/models/hosting_environment_profile.rb'
    autoload :ResourceMetricName,                                 '2015-08-01/generated/azure_mgmt_web/models/resource_metric_name.rb'
    autoload :AppServiceCertificateCollection,                    '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate_collection.rb'
    autoload :VirtualApplication,                                 '2015-08-01/generated/azure_mgmt_web/models/virtual_application.rb'
    autoload :VirtualDirectory,                                   '2015-08-01/generated/azure_mgmt_web/models/virtual_directory.rb'
    autoload :NameIdentifier,                                     '2015-08-01/generated/azure_mgmt_web/models/name_identifier.rb'
    autoload :Experiments,                                        '2015-08-01/generated/azure_mgmt_web/models/experiments.rb'
    autoload :SkuDescription,                                     '2015-08-01/generated/azure_mgmt_web/models/sku_description.rb'
    autoload :RampUpRule,                                         '2015-08-01/generated/azure_mgmt_web/models/ramp_up_rule.rb'
    autoload :Capability,                                         '2015-08-01/generated/azure_mgmt_web/models/capability.rb'
    autoload :ProxyOnlyResource,                                  '2015-08-01/generated/azure_mgmt_web/models/proxy_only_resource.rb'
    autoload :SiteSeal,                                           '2015-08-01/generated/azure_mgmt_web/models/site_seal.rb'
    autoload :ManagedServiceIdentity,                             '2015-08-01/generated/azure_mgmt_web/models/managed_service_identity.rb'
    autoload :SiteConfig,                                         '2015-08-01/generated/azure_mgmt_web/models/site_config.rb'
    autoload :SlotSwapStatus,                                     '2015-08-01/generated/azure_mgmt_web/models/slot_swap_status.rb'
    autoload :ConnStringInfo,                                     '2015-08-01/generated/azure_mgmt_web/models/conn_string_info.rb'
    autoload :AppServiceCertificate,                              '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate.rb'
    autoload :SnapshotRecoveryTarget,                             '2015-08-01/generated/azure_mgmt_web/models/snapshot_recovery_target.rb'
    autoload :SiteLimits,                                         '2015-08-01/generated/azure_mgmt_web/models/site_limits.rb'
    autoload :ResourceMetricAvailability,                         '2015-08-01/generated/azure_mgmt_web/models/resource_metric_availability.rb'
    autoload :IpSecurityRestriction,                              '2015-08-01/generated/azure_mgmt_web/models/ip_security_restriction.rb'
    autoload :AppServiceCertificateOrderCollection,               '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate_order_collection.rb'
    autoload :ApiDefinitionInfo,                                  '2015-08-01/generated/azure_mgmt_web/models/api_definition_info.rb'
    autoload :SkuCapacity,                                        '2015-08-01/generated/azure_mgmt_web/models/sku_capacity.rb'
    autoload :CorsSettings,                                       '2015-08-01/generated/azure_mgmt_web/models/cors_settings.rb'
    autoload :SiteSealRequest,                                    '2015-08-01/generated/azure_mgmt_web/models/site_seal_request.rb'
    autoload :AutoHealCustomAction,                               '2015-08-01/generated/azure_mgmt_web/models/auto_heal_custom_action.rb'
    autoload :SiteMachineKey,                                     '2015-08-01/generated/azure_mgmt_web/models/site_machine_key.rb'
    autoload :AutoHealActions,                                    '2015-08-01/generated/azure_mgmt_web/models/auto_heal_actions.rb'
    autoload :CertificateDetails,                                 '2015-08-01/generated/azure_mgmt_web/models/certificate_details.rb'
    autoload :SlowRequestsBasedTrigger,                           '2015-08-01/generated/azure_mgmt_web/models/slow_requests_based_trigger.rb'
    autoload :HostNameSslState,                                   '2015-08-01/generated/azure_mgmt_web/models/host_name_ssl_state.rb'
    autoload :StatusCodesBasedTrigger,                            '2015-08-01/generated/azure_mgmt_web/models/status_codes_based_trigger.rb'
    autoload :HandlerMapping,                                     '2015-08-01/generated/azure_mgmt_web/models/handler_mapping.rb'
    autoload :RequestsBasedTrigger,                               '2015-08-01/generated/azure_mgmt_web/models/requests_based_trigger.rb'
    autoload :NameValuePair,                                      '2015-08-01/generated/azure_mgmt_web/models/name_value_pair.rb'
    autoload :AutoHealTriggers,                                   '2015-08-01/generated/azure_mgmt_web/models/auto_heal_triggers.rb'
    autoload :Resource,                                           '2015-08-01/generated/azure_mgmt_web/models/resource.rb'
    autoload :AutoHealRules,                                      '2015-08-01/generated/azure_mgmt_web/models/auto_heal_rules.rb'
    autoload :AppServiceCertificateResource,                      '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate_resource.rb'
    autoload :AppServiceCertificateOrder,                         '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate_order.rb'
    autoload :AppServiceCertificateOrderPatchResource,            '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate_order_patch_resource.rb'
    autoload :AppServiceCertificatePatchResource,                 '2015-08-01/generated/azure_mgmt_web/models/app_service_certificate_patch_resource.rb'
    autoload :CertificateEmail,                                   '2015-08-01/generated/azure_mgmt_web/models/certificate_email.rb'
    autoload :CertificateOrderAction,                             '2015-08-01/generated/azure_mgmt_web/models/certificate_order_action.rb'
    autoload :ReissueCertificateOrderRequest,                     '2015-08-01/generated/azure_mgmt_web/models/reissue_certificate_order_request.rb'
    autoload :RenewCertificateOrderRequest,                       '2015-08-01/generated/azure_mgmt_web/models/renew_certificate_order_request.rb'
    autoload :VnetRoute,                                          '2015-08-01/generated/azure_mgmt_web/models/vnet_route.rb'
    autoload :VnetInfo,                                           '2015-08-01/generated/azure_mgmt_web/models/vnet_info.rb'
    autoload :VnetGateway,                                        '2015-08-01/generated/azure_mgmt_web/models/vnet_gateway.rb'
    autoload :User,                                               '2015-08-01/generated/azure_mgmt_web/models/user.rb'
    autoload :SnapshotRecoveryRequest,                            '2015-08-01/generated/azure_mgmt_web/models/snapshot_recovery_request.rb'
    autoload :ResourceMetricDefinition,                           '2015-08-01/generated/azure_mgmt_web/models/resource_metric_definition.rb'
    autoload :PushSettings,                                       '2015-08-01/generated/azure_mgmt_web/models/push_settings.rb'
    autoload :HybridConnectionKey,                                '2015-08-01/generated/azure_mgmt_web/models/hybrid_connection_key.rb'
    autoload :HybridConnection,                                   '2015-08-01/generated/azure_mgmt_web/models/hybrid_connection.rb'
    autoload :Site,                                               '2015-08-01/generated/azure_mgmt_web/models/site.rb'
    autoload :AppServicePlan,                                     '2015-08-01/generated/azure_mgmt_web/models/app_service_plan.rb'
    autoload :KeyVaultSecretStatus,                               '2015-08-01/generated/azure_mgmt_web/models/key_vault_secret_status.rb'
    autoload :CertificateProductType,                             '2015-08-01/generated/azure_mgmt_web/models/certificate_product_type.rb'
    autoload :ProvisioningState,                                  '2015-08-01/generated/azure_mgmt_web/models/provisioning_state.rb'
    autoload :CertificateOrderStatus,                             '2015-08-01/generated/azure_mgmt_web/models/certificate_order_status.rb'
    autoload :CertificateOrderActionType,                         '2015-08-01/generated/azure_mgmt_web/models/certificate_order_action_type.rb'
    autoload :RouteType,                                          '2015-08-01/generated/azure_mgmt_web/models/route_type.rb'
    autoload :AutoHealActionType,                                 '2015-08-01/generated/azure_mgmt_web/models/auto_heal_action_type.rb'
    autoload :ConnectionStringType,                               '2015-08-01/generated/azure_mgmt_web/models/connection_string_type.rb'
    autoload :ScmType,                                            '2015-08-01/generated/azure_mgmt_web/models/scm_type.rb'
    autoload :ManagedPipelineMode,                                '2015-08-01/generated/azure_mgmt_web/models/managed_pipeline_mode.rb'
    autoload :SiteLoadBalancing,                                  '2015-08-01/generated/azure_mgmt_web/models/site_load_balancing.rb'
    autoload :SslState,                                           '2015-08-01/generated/azure_mgmt_web/models/ssl_state.rb'
    autoload :HostType,                                           '2015-08-01/generated/azure_mgmt_web/models/host_type.rb'
    autoload :UsageState,                                         '2015-08-01/generated/azure_mgmt_web/models/usage_state.rb'
    autoload :SiteAvailabilityState,                              '2015-08-01/generated/azure_mgmt_web/models/site_availability_state.rb'
    autoload :StatusOptions,                                      '2015-08-01/generated/azure_mgmt_web/models/status_options.rb'
  end
end
