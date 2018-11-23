dpkg -s auditd | grep Status
apt-get install -y auditd
dpkg -s auditd | grep Status
inspec help
inspec detect
cd /root/
ll
ls -Al
git clone https://github.com/learn-chef/auditd.git
tree auditd
cat auditd/controls/example.rb
inspec exec /root/auditd
inspec exec auditd -t ssh://root:password@target
jq
inspec exec auditd -t ssh://root:password@target --reporter=json | jq .
inspec check auditd
inspec archive auditd
ls -Al
inspec exec auditd-0.1.0.tar.gz -t ssh://root:password@target
inspec exec https://github.com/learn-chef/auditd/releases/download/v0.1.0/auditd-0.1.0.tar.gz -t ssh://root:password@target
inspec supermarket profiles
inspec supermarket info dev-sec/linux-baseline
inspec supermarket exec dev-sec/linux-baseline -t ssh://root:password@target
inspec exec https://github.com/dev-sec/linux-baseline -t ssh://root:password@target
inspec exec https://github.com/dev-sec/linux-baseline -t ssh://root:password@target | grep -A 7 package-08
inspec exec https://github.com/dev-sec/linux-baseline -t ssh://root:password@target --controls package-08
