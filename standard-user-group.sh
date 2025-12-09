#!/bin/bash

#Creates a standard-user group in XC console across all application namespaces, as well as system and default

#Create TENANT_URL and API_TOKEN env variables and run

curl --location "$TENANT_URL/api/web/custom/namespaces/system/user_groups/read-only" \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header "Authorization: $API_TOKEN" \
--data '        {
            "name": "standard-users",
            "display_name": "",
            "namespace_roles": [
                  {
                    "namespace": "*",
                    "role": "f5xc-account-protection-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-application-traffic-insight-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-authentication-intelligence-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-big-ip-apm-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-big-ip-utilities-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-bot-defense-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-client-side-defense-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-console-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-content-delivery-network-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-da-support-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-data-intelligence-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-ddos-transit-services-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-delegated-access-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-distributed-apps-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-dns-management-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-global-log-receiver-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-managed-service-provider-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-mobile-app-shield-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-mobile-integrator-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-msp-support-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-multi-cloud-app-connect-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-multi-cloud-network-connect-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-nginx-one-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-observability-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-scim-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-synthetic-monitor-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-waap-user"
                },
                {
                    "namespace": "*",
                    "role": "f5xc-web-app-scanning-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-big-ip-apm-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-big-ip-utilities-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-bot-defense-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-client-side-defense-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-console-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-content-delivery-network-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-da-support-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-data-intelligence-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-ddos-transit-services-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-delegated-access-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-distributed-apps-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-dns-management-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-global-log-receiver-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-managed-service-provider-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-mobile-app-shield-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-mobile-integrator-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-msp-support-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-multi-cloud-app-connect-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-multi-cloud-network-connect-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-nginx-one-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-observability-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-scim-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-synthetic-monitor-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-waap-user"
                },
                {
                    "namespace": "shared",
                    "role": "f5xc-web-app-scanning-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-big-ip-apm-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-big-ip-utilities-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-bot-defense-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-client-side-defense-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-console-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-content-delivery-network-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-da-support-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-data-intelligence-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-ddos-transit-services-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-delegated-access-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-distributed-apps-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-dns-management-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-global-log-receiver-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-managed-service-provider-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-mobile-app-shield-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-mobile-integrator-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-msp-support-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-multi-cloud-app-connect-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-multi-cloud-network-connect-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-nginx-one-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-observability-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-scim-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-synthetic-monitor-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-waap-user"
                },
                {
                    "namespace": "system",
                    "role": "f5xc-web-app-scanning-user"
                }
            ],
            "usernames": [],
            "sync_id": "",
            "error": null,
            "description": "",
            "sync_mode": "SELF",
            "references_count": {}
        }'
