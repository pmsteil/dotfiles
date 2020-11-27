# this is work in progress

# setup my local git stuff
mkdir -p ~/git
cd ~/git

git clone git@gitlab.com:wd-magento-group/wd-qatools.git
git clone git@gitlab.com:wd-magento-group/wd-mag-localdev.git
git clone git@gitlab.com:wd-magento-group/wdmag-deploy.git

git $ git clone git@github.com:pmsteil/Magento-Cloud.git github-magento-cloud-fork

cd github-magento-cloud-fork
git remote add wdirect git@github.com:pmsteil/Magento-Cloud.git
cd ..
