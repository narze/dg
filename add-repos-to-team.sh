#!/bin/bash

ORG="eventpop"
TEAM_SLUG="owners"
REPOS=(
  "eventpop/eventpop"
  "eventpop/island"
  "eventpop/static-site"
  "eventpop/s2ofestival"
  "eventpop/popstream"
  "eventpop/app-ios"
  "eventpop/deployments"
  "eventpop/spark"
  "eventpop/app-android"
  "eventpop/dash-android"
  "eventpop/vaccine-frontend-next"
  "eventpop/vaccine-backend-strapi"
  "eventpop/vaccine-booking"
  "eventpop/vaccine-checkin"
  "eventpop/promoengine-backend"
  "eventpop/fleet"
  "eventpop/promoengine-management"
  "eventpop/intouch-wanakam-static-site"
  "eventpop/promotion_engine_robot"
  "eventpop/intouch-wanakam-2020-react"
  "eventpop/virtualrun"
  "eventpop/esimo-widgets-example"
  "eventpop/island-payment"
  "eventpop/myphotorun-frontend"
  "eventpop/myphotorun-backend"
  "eventpop/zonar-checkin"
  "eventpop/onsite-kit"
  "eventpop/infra"
  "eventpop/esimo-gitops"
  "eventpop/esimo-infra"
  "eventpop/intouch-wanakam-2020"
  "eventpop/virtualrun-frontend"
  "eventpop/mobile-kit"
  "eventpop/custom-script-portal"
  "eventpop/nestjs-nextjs-aws-cognito"
  "eventpop/rbh-logger"
  "eventpop/esimo-legacy"
  "eventpop/esimo-storefront"
  "eventpop/zonar-dashboard-rails"
  "eventpop/promo-engine"
  "eventpop/short-url"
  "eventpop/zonar-checkin-firebase"
  "eventpop/eventpop-registration"
  "eventpop/zonar-station-rails"
  "eventpop/fieldwave-rpi-setup"
  "eventpop/eventpop-singha-microsite"
  "eventpop/storefront"
  "eventpop/fieldwave-reader-js"
  "eventpop/NFC-sample-iOS"
  "eventpop/opn-card-validation-nodejs"
  "eventpop/eventpop-photos"
  "eventpop/dash-ios"
  "eventpop/poplive-frontend"
  "eventpop/knowledge-base"
  "eventpop/backend-scb-deeplink-clone"
  "eventpop/backend-rabbit-linepay-clone"
  "eventpop/cloudfunctions"
  "eventpop/luckypop"
  "eventpop/docker-rails-base"
  "eventpop/exhibitor-app"
  "eventpop/pop-streamer"
  "eventpop/eventpop-scbeasy-shortlink"
  "eventpop/maekah"
  "eventpop/event-dude"
  "eventpop/careers"
  "eventpop/dashslides"
  "eventpop/eventpop-order"
  "eventpop/pack"
  "eventpop/challenges"
  "eventpop/eventpop-ios"
  "eventpop/citi-connect"
  "eventpop/popbot"
  "eventpop/eventpop-frontend"
  "eventpop/exhibitor-mobile"
  "eventpop/slack-emoji"
  "eventpop/spark-api-blueprint"
  "eventpop/api-blueprints"
  "eventpop/omniauth-eventpop"
  "eventpop/eventpop-cli"
  "eventpop/eventdude"
  "eventpop/blognone-jobs-bot"
  "eventpop/meeting_room"
  "eventpop/eventrock"
  "eventpop/Android-Iconics"
  "eventpop/eventpop-api-reference"
  "eventpop/eventpop-api-client-example"
  "eventpop/eventpop-android"
  "eventpop/poppier"
  "eventpop/passionhead-web"
  "eventpop/infra-legacy"
  "eventpop/bnk2shot"
  "eventpop/pop-search"
  "eventpop/pele"
  "eventpop/surveypop"
  "eventpop/graphpop"
  "eventpop/waterzonic-rails"
  "eventpop/tickets-widget"
  "eventpop/syncer"
  "eventpop/KnownUser.V3.RubyOnRails"
  "eventpop/army"
  "eventpop/fitfest"
  "eventpop/captain"
  "eventpop/eventpop-etc"
  "eventpop/humane-rails"
)

for REPO in "${REPOS[@]}"; do
  echo "Adding repo ${REPO} to Org:$ORG Team:$TEAM_SLUG"

  # https://docs.github.com/en/rest/teams/teams#add-or-update-team-repository-permissions
  # (needs admin:org scope)
  gh api \
    --method PUT \
    -H "Accept: application/vnd.github+json" \
    "/orgs/$ORG/teams/$TEAM_SLUG/repos/$REPO" \
    -f permission='admin' && echo "Added"

  echo "\n============================================================\n"
done