# Packer for CADS

This takes a RHEL 7 ISO image and builds a VMWare compatible image for use in UK Cloud.

## Environment varibles

The following environment variables need to be set 

* ISO_URL - Path to the RHEL ISO
* VCLOUD_USER - This is not your portal username. It can be found in the top right of the vCloud Director
* VCLOUD_ORG - The vCloud ORG. This can also be found in the vCloud Director either from the URL or within the app.
* VCLOUD_VAPP - The vApp template name.
* VCLOUD_CATALOG - The catalog you would like to put the image into.


## Requirements

To use this project you will need the follow

* Access to vCloud
* Packer (https://www.packer.io/)
* VMWare ovftool (https://www.vmware.com/support/developer/ovf/)
* VMWare Fusion (http://www.vmware.com/products/fusion.html)
* RHEL 7 ISO (https://www.redhat.com/)


## Upstream sources

Took some inspiration from the following git repos and they both require attribution.

* https://github.com/TelekomLabs/packer-rhel7
* https://github.com/jmassara/packer-rhel7-vms
* https://github.com/UKCloud/automation_examples


## Jenkins

The first obvious question is where is the Jenkinsfile or why is this not in Jenkins. Sadly this requires VMWare tools that are not available on our Linux Jenkins hosts. In the future we could have a macOS Jenkins slave that has VMWare Fusion installed where this could run. From now this need to run on your workstation.
