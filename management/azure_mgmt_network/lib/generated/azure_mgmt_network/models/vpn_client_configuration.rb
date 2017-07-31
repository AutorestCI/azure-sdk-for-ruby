# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # VpnClientConfiguration for P2S client.
    #
    class VpnClientConfiguration

      include MsRestAzure

      include MsRest::JSONable
      # @return [AddressSpace] The reference of the address space resource
      # which represents Address space for P2S VpnClient.
      attr_accessor :vpn_client_address_pool

      # @return [Array<VpnClientRootCertificate>] VpnClientRootCertificate for
      # virtual network gateway.
      attr_accessor :vpn_client_root_certificates

      # @return [Array<VpnClientRevokedCertificate>]
      # VpnClientRevokedCertificate for Virtual network gateway.
      attr_accessor :vpn_client_revoked_certificates

      # @return [Array<VpnClientProtocol>] VpnClientProtocols for Virtual
      # network gateway.
      attr_accessor :vpn_client_protocols

      # @return [String] The radius server address property of the
      # VirtualNetworkGateway resource for vpn client connection.
      attr_accessor :radius_server_address

      # @return [String] The radius secret property of the
      # VirtualNetworkGateway resource for vpn client connection.
      attr_accessor :radius_server_secret


      #
      # Mapper for VpnClientConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VpnClientConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VpnClientConfiguration',
            model_properties: {
              vpn_client_address_pool: {
                required: false,
                serialized_name: 'vpnClientAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              vpn_client_root_certificates: {
                required: false,
                serialized_name: 'vpnClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VpnClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientRootCertificate'
                      }
                  }
                }
              },
              vpn_client_revoked_certificates: {
                required: false,
                serialized_name: 'vpnClientRevokedCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VpnClientRevokedCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientRevokedCertificate'
                      }
                  }
                }
              },
              vpn_client_protocols: {
                required: false,
                serialized_name: 'vpnClientProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VpnClientProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              radius_server_address: {
                required: false,
                serialized_name: 'radiusServerAddress',
                type: {
                  name: 'String'
                }
              },
              radius_server_secret: {
                required: false,
                serialized_name: 'radiusServerSecret',
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
