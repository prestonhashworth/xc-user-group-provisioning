#!/bin/bash

#Creates a read-only user group in XC console across all application namespaces, as well as system and default

#Create TENANT_URL and API_TOKEN env variables and run

curl --location "$TENANT_URL/api/web/custom/namespaces/system/user_groups/read-only" \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header "Authorization: $API_TOKEN" \
--data '{
    "name": "read-only",
    "display_name": "",
    "namespace_roles": [
        {
            "namespace": "*",
            "role": "f5xc-account-protection-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-mobile-app-shield-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-distributed-apps-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-delegated-access-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-client-side-defense-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-synthetic-monitor-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-msp-support-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-multi-cloud-app-connect-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-authentication-intelligence-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-big-ip-apm-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-content-delivery-network-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-mobile-integrator-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-application-traffic-insight-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-data-intelligence-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-global-log-receiver-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-ai-assistant-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-nginx-one-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-multi-cloud-network-connect-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-dns-management-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-flow-anomaly-detection-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-observability-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-big-ip-utilities-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-waap-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-console-monitor"
        },
        {
            "namespace": "*",
            "role": "ves-io-monitor-role"
        },
        {
            "namespace": "*",
            "role": "f5xc-ddos-transit-services-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-bot-defense-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-flow-collection-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-web-app-scanning-monitor"
        },
        {
            "namespace": "*",
            "role": "f5xc-managed-service-provider-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-account-protection-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-mobile-app-shield-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-distributed-apps-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-delegated-access-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-client-side-defense-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-synthetic-monitor-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-msp-support-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-multi-cloud-app-connect-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-authentication-intelligence-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-big-ip-apm-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-content-delivery-network-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-mobile-integrator-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-application-traffic-insight-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-data-intelligence-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-global-log-receiver-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-ai-assistant-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-nginx-one-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-multi-cloud-network-connect-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-dns-management-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-flow-anomaly-detection-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-observability-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-big-ip-utilities-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-waap-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-console-monitor"
        },
        {
            "namespace": "shared",
            "role": "ves-io-monitor-role"
        },
        {
            "namespace": "shared",
            "role": "f5xc-ddos-transit-services-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-bot-defense-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-flow-collection-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-web-app-scanning-monitor"
        },
        {
            "namespace": "shared",
            "role": "f5xc-managed-service-provider-monitor"
        },
          {
            "namespace": "default",
            "role": "f5xc-account-protection-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-mobile-app-shield-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-distributed-apps-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-delegated-access-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-client-side-defense-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-synthetic-monitor-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-msp-support-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-multi-cloud-app-connect-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-authentication-intelligence-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-big-ip-apm-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-content-delivery-network-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-mobile-integrator-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-application-traffic-insight-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-data-intelligence-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-global-log-receiver-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-ai-assistant-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-nginx-one-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-multi-cloud-network-connect-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-dns-management-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-flow-anomaly-detection-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-observability-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-big-ip-utilities-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-waap-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-console-monitor"
        },
        {
            "namespace": "default",
            "role": "ves-io-monitor-role"
        },
        {
            "namespace": "default",
            "role": "f5xc-ddos-transit-services-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-bot-defense-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-flow-collection-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-web-app-scanning-monitor"
        },
        {
            "namespace": "default",
            "role": "f5xc-managed-service-provider-monitor"
        },
          {
            "namespace": "system",
            "role": "f5xc-account-protection-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-mobile-app-shield-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-distributed-apps-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-delegated-access-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-client-side-defense-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-synthetic-monitor-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-msp-support-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-multi-cloud-app-connect-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-authentication-intelligence-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-big-ip-apm-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-content-delivery-network-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-mobile-integrator-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-application-traffic-insight-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-data-intelligence-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-global-log-receiver-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-ai-assistant-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-nginx-one-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-multi-cloud-network-connect-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-dns-management-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-flow-anomaly-detection-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-observability-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-big-ip-utilities-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-waap-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-console-monitor"
        },
        {
            "namespace": "system",
            "role": "ves-io-monitor-role"
        },
        {
            "namespace": "system",
            "role": "f5xc-ddos-transit-services-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-bot-defense-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-flow-collection-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-web-app-scanning-monitor"
        },
        {
            "namespace": "system",
            "role": "f5xc-managed-service-provider-monitor"
        }
    ],
    "usernames": [],
    "sync_id": "",
    "error": null,
    "description": "",
    "sync_mode": "SELF",
    "references_count": {}

}'
