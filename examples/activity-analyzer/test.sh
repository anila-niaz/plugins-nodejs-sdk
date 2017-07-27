#!/usr/bin/env bash

export PLUGIN_HOST="localhost"
export PLUGIN_PORT="8080"

export GATEWAY_HOST="localhost"
export GATEWAY_PORT="8123"

node build/index.js &
plugin_pid=$!

sleep 1

node gatewayMockup.js &
gateway_pid=$!

sleep 2

curl -X POST -H "Content-Type: application/json" -d '{"authentication_token":"123", "worker_id":"123"}' http://${PLUGIN_HOST}:${PLUGIN_PORT}/v1/init
curl -X PUT -H "Content-Type: application/json" -d '{"level":"debug"}' http://${PLUGIN_HOST}:${PLUGIN_PORT}/v1/log_level
curl -X POST -H "Content-Type: application/json" -d '{
  "activity_analyzer_id": 1923,
  "datamart_id": 1034,
  "channel_id": "1268",
  "activity": {
    "$email_hash": null,
    "$events": [
      {
        "$event_name": "page HP",
        "$properties": {
          "$referrer": "https://www.google.fr/",
          "$url": "https://estcequecestbientotlapero.fr/",
          "produit": "SANTE",
          "session id": "tQ6GQojf"
        },
        "$ts": 1479820606900
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "produit": "SANTE",
          "session id": "tQ6GQojf",
          "taux remplissage": "0"
        },
        "$ts": 1479820777216
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "produit": "SANTE",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "taux remplissage": "13"
        },
        "$ts": 1479820782171
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "produit": "SANTE",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "statut marital": "Marié",
          "taux remplissage": "25"
        },
        "$ts": 1479820795229
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "date naissance": "1985-09-10",
          "produit": "SANTE",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "statut marital": "Marié",
          "taux remplissage": "50"
        },
        "$ts": 1479820830393
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "date naissance": "1985-09-10",
          "produit": "SANTE",
          "profession": "Salarié",
          "regime social": "Général",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "statut marital": "Marié",
          "taux remplissage": "63"
        },
        "$ts": 1479820833790
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "date naissance": "1985-09-10",
          "produit": "SANTE",
          "profession": "Salarié",
          "regime social": "Général",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "statut marital": "Marié",
          "taux remplissage": "75"
        },
        "$ts": 1479820835892
      },
      {
        "$event_name": "formulaire",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/",
          "$url": "https://estcequecestbientotlapero.fr/php/main_new_api.php?EXEC=CONTACT&STEP=1&ID_SESSION=tQ6GQojf&remb_soins=0&remb_optique=200&remb_dentaire=100&remb_hopital=0",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "code_postal": "75013",
          "date naissance": "1985-09-10",
          "departement": "75",
          "pays": "France",
          "produit": "SANTE",
          "profession": "Salarié",
          "regime social": "Général",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "statut marital": "Marié",
          "taux remplissage": "88",
          "ville": "PARIS"
        },
        "$ts": 1479820860528
      },
      {
        "$event_name": "page panel",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/php/main_new_api.php",
          "$url": "https://estcequecestbientotlapero.fr/Tableau-des-devis/p/3/2463/0/",
          "choix_dentaire": "100",
          "choix_hospitalisation": "0",
          "choix_optique": "200",
          "choix_soinscourants": "0",
          "civilite": "monsieur",
          "code_postal": "75013",
          "date naissance": "1985-09-10",
          "departement": "75",
          "email_hash": "c8a71065b4a0876ec09f68948ca26ccc",
          "id_cotation": "",
          "nombre enfants": "0",
          "offres": ["Apéro 2000"],
          "optin": "oui",
          "pays": "France",
          "phone_hash": "c895535d7fa3bd8317b3bcee7f35d4ed",
          "phone_type": "mobile",
          "produit": "SANTE",
          "profession": "Salarié",
          "regime social": "Général",
          "session id": "tQ6GQojf",
          "sexe": "homme",
          "statut marital": "Marié",
          "taux remplissage": "100",
          "ville": "PARIS"
        },
        "$ts": 1479820883232
      },
      {
        "$event_name": "demande MER",
        "$properties": {
          "$referrer": "https://estcequecestbientotlapero.fr/Tableau-des-devis/p/3/2463/0/",
          "$url": "https://estcequecestbientotlapero.fr/Apero-2000-Tableau-des-devis/p/4/2463/2052/selection=59",
          "partenaire": "Apéro 2000",
          "produit": "SANTE",
          "session id": "tQ6GQojf"
        },
        "$ts": 1479820909895
      }
    ],
    "$location": null,
    "$origin": {
      "$campaign_id": null,
      "$campaign_name": null,
      "$campaign_technical_name": null,
      "$channel": "referral",
      "$creative_id": null,
      "$creative_name": null,
      "$creative_technical_name": null,
      "$gclid": null,
      "$keywords": null,
      "$log_id": null,
      "$message_id": null,
      "$message_technical_name": null,
      "$referral_path": "https://www.google.fr/",
      "$social_network": null,
      "$source": "www.google.fr",
      "$sub_campaign_id": null,
      "$sub_campaign_technical_name": null,
      "$ts": 1479820606901
    },
    "$session_duration": 302,
    "$session_status": "CLOSED_SESSION",
    "$site_id": "1268",
    "$topics": {},
    "$ts": 1479820606901,
    "$ttl": 0,
    "$type": "SITE_VISIT",
    "$user_account_id": null,
    "$user_agent_id": "vec:289388396"
  }
}' http://${PLUGIN_HOST}:${PLUGIN_PORT}/v1/activity_analysis | jq '.'

kill $plugin_pid $gateway_pid