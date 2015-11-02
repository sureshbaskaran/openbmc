# Common code for generating Phosphor OpenBMC images.

# Additional IMAGE_FEATURES available with Phosphor OpenBMC:
#
# - obmc-phosphor-fan-mgmt            - Phosphor OpenBMC fan management
# - obmc-phosphor-chassis-mgmt        - Phosphor OpenBMC chassis management
# - obmc-phosphor-sensor-mgmt         - Phosphor OpenBMC sensor management
# - obmc-phosphor-flash-mgmt          - Phosphor OpenBMC flash management
# - obmc-phosphor-event-mgmt          - Phosphor OpenBMC event management
# - obmc-phosphor-policy-mgmt         - Phosphor OpenBMC policy management
# - obmc-phosphor-system-mgmt         - Phosphor OpenBMC system management

inherit core-image
inherit obmc-phosphor-license

FEATURE_PACKAGES_obmc-phosphor-fan-mgmt ?= "packagegroup-obmc-phosphor-apps-fan-mgmt"
FEATURE_PACKAGES_obmc-phosphor-chassis-mgmt ?= "packagegroup-obmc-phosphor-apps-chassis-mgmt"
FEATURE_PACKAGES_obmc-phosphor-sensor-mgmt ?= "packagegroup-obmc-phosphor-apps-sensor-mgmt"
FEATURE_PACKAGES_obmc-phosphor-flash-mgmt ?= "packagegroup-obmc-phosphor-apps-flash-mgmt"
FEATURE_PACKAGES_obmc-phosphor-event-mgmt ?= "packagegroup-obmc-phosphor-apps-event-mgmt"
FEATURE_PACKAGES_obmc-phosphor-policy-mgmt ?= "packagegroup-obmc-phosphor-apps-policy-mgmt"
FEATURE_PACKAGES_obmc-phosphor-system-mgmt ?= "packagegroup-obmc-phosphor-apps-system-mgmt"

# Install entire Phosphor application stack by default
IMAGE_FEATURES += " \
       obmc-phosphor-fan-mgmt \
       obmc-phosphor-chassis-mgmt \
       obmc-phosphor-sensor-mgmt \
       obmc-phosphor-flash-mgmt \
       obmc-phosphor-event-mgmt \
       obmc-phosphor-policy-mgmt \
       obmc-phosphor-system-mgmt \
       ssh-server-dropbear \
       "

IMAGE_INSTALL += " \
       bash \
       packagegroup-obmc-phosphor-apps-extras \
       i2c-tools \
       screen \
       "