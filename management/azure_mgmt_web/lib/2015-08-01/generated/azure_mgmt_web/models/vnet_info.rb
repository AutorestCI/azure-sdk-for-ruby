# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Virtual Network information contract.
    #
    class VnetInfo < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The Virtual Network's resource ID.
      attr_accessor :vnet_resource_id

      # @return [String] The client certificate thumbprint.
      attr_accessor :cert_thumbprint

      # @return [Array<Integer>] A certificate file (.cer) blob containing the
      # public key of the private key used to authenticate a
      # Point-To-Site VPN connection.
      attr_accessor :cert_blob

      # @return [Array<VnetRoute>] The routes that this Virtual Network
      # connection uses.
      attr_accessor :routes

      # @return [Boolean] <code>true</code> if a resync is required; otherwise,
      # <code>false</code>.
      attr_accessor :resync_required

      # @return [String] DNS servers to be used by this Virtual Network. This
      # should be a comma-separated list of IP addresses.
      attr_accessor :dns_servers


      #
      # Mapper for VnetInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VnetInfo',
          type: {
            name: 'Composite',
            class_name: 'VnetInfo',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
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
              vnet_resource_id: {
                required: false,
                serialized_name: 'properties.vnetResourceId',
                type: {
                  name: 'String'
                }
              },
              cert_thumbprint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.certThumbprint',
                type: {
                  name: 'String'
                }
              },
              cert_blob: {
                required: false,
                serialized_name: 'properties.certBlob',
                type: {
                  name: 'ByteArray'
                }
              },
              routes: {
                required: false,
                read_only: true,
                serialized_name: 'properties.routes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VnetRouteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VnetRoute'
                      }
                  }
                }
              },
              resync_required: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resyncRequired',
                type: {
                  name: 'Boolean'
                }
              },
              dns_servers: {
                required: false,
                serialized_name: 'properties.dnsServers',
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
