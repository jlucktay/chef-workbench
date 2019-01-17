describe aws_ec2_instance(name: 'webserver') do
    it { should be_running }
end

describe aws_ec2_instance('i-03b342633b9cfee7f') do
    it { should be_running }
end
