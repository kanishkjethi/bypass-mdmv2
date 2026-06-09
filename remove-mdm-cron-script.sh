#!/bin/bash

sed -i '' '/# MDM Servers/d' /Volumes/Macintosh\ HD/etc/hosts
sed -i '' '/# End/d' /Volumes/Macintosh\ HD/etc/hosts
sed -i '' '/deviceenrollment.apple.com/d' /Volumes/Macintosh\ HD/etc/hosts
sed -i '' '/mdmenrollment.apple.com/d' /Volumes/Macintosh\ HD/etc/hosts
sed -i '' '/iprofiles.apple.com/d' /Volumes/Macintosh\ HD/etc/hosts
sed -i '' '/acmdm.apple.com/d' /Volumes/Macintosh\ HD/etc/hosts
sed -i '' '/axm-adm-mdm.apple.com/d' /Volumes/Macintosh\ HD/etc/hosts

echo "# MDM Servers" | tee -a /Volumes/Macintosh\ HD/etc/hosts
echo "0.0.0.0 deviceenrollment.apple.com" | tee -a /Volumes/Macintosh\ HD/etc/hosts
echo "0.0.0.0 mdmenrollment.apple.com" | tee -a /Volumes/Macintosh\ HD/etc/hosts
echo "0.0.0.0 iprofiles.apple.com" | tee -a /Volumes/Macintosh\ HD/etc/hosts
echo "0.0.0.0 acmdm.apple.com" | tee -a /Volumes/Macintosh\ HD/etc/hosts
echo "0.0.0.0 axm-adm-mdm.apple.com" | tee -a /Volumes/Macintosh\ HD/etc/hosts
echo "# End" | tee -a /Volumes/Macintosh\ HD/etc/hosts

rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
rm -rf /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
touch /Volumes/Macintosh\ HD/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound
