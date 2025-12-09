#!/bin/bash

#Creates admin user group in XC console across all application namespaces, as well as system and default

#Create TENANT_URL and API_TOKEN env variables and run

curl --location "$TENANT_URL/api/web/custom/namespaces/system/user_groups/read-only" \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header "Authorization: $API_TOKEN" \
--data '{
            "name": "admins",
            "display_name": "",
            "namespace_roles": [
                {
                    "namespace": "system",
                    "role": "ves-io-admin-role"
                },
                {
                    "namespace": "default",
                    "role": "ves-io-admin-role"
                },
                {
                    "namespace": "shared",
                    "role": "ves-io-admin-role"
                },
                {
                    "namespace": "*",
                    "role": "ves-io-admin-role"
                }
            ],
            "usernames": [],
            "sync_id": "",
            "error": null,
            "description": "Use this group instead of assigning Tenant Owner",
            "sync_mode": "SELF",
            "references_count": {}
        }
    ]
}'
