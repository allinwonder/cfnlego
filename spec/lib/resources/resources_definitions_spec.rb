require "spec_helper"

describe "resource definitions" do
  let(:resource) {Cfnlego::Resource.new(type, logical_name)}
  let(:cfnlego) {Cfnlego::CloudFormation.new([resource])}

  shared_examples "general definition" do
    let(:tempfile) { Tempfile.new('template') }
    let(:cfndsl) { CfnDsl::eval_file_with_extras(tempfile.path, [], false) }
    it "provides well-formed ruby code" do
      expect { RubyVM::InstructionSequence.compile cfnlego.render }.not_to raise_error
    end

    it "provides valid cfndsl template" do
      tempfile.write(cfnlego.render)
      tempfile.close
      expect{ JSON.parse cfndsl.to_json }.not_to raise_error
    end
  end

  describe "AWS/AutoScaling/AutoScalingGroup.yaml" do
    let(:type) { "AWS::AutoScaling::AutoScalingGroup" }
    let(:logical_name) { "ASG" }

    it_behaves_like "general definition"
  end

  describe "AWS/AutoScaling/LaunchConfiguration.yaml" do
    let(:type) { "AWS::AutoScaling::LaunchConfiguration" }
    let(:logical_name) { "LC" }

    it_behaves_like "general definition"
  end

  describe "AWS/AutoScaling/LifecycleHook.yaml" do
    let(:type) { "AWS::AutoScaling::LifecycleHook" }
    let(:logical_name) { "Hook" }

    it_behaves_like "general definition"
  end

  describe "AWS/AutoScaling/ScalingPolicy.yaml" do
    let(:type) { "AWS::AutoScaling::ScalingPolicy" }
    let(:logical_name) { "ScalingPolicy" }

    it_behaves_like "general definition"
  end


  describe "AWS/IAM/Role.yaml" do
    let(:type) { "AWS::IAM::Role" }
    let(:logical_name) { "IAMRole" }
    it_behaves_like "general definition"
  end

  describe "AWS/IAM/InstanceProfile.yaml" do
    let(:type) { "AWS::IAM::InstanceProfile" }
    let(:logical_name) { "InstanceProfile" }
    it_behaves_like "general definition"
  end

  describe "AWS/CloudWatch/Alarm.yaml" do
    let(:type) { "AWS::CloudWatch::Alarm" }
    let(:logical_name) { "Alarm" }
    it_behaves_like "general definition"
  end

  describe "AWS/Lambda/Function.yaml" do
    let(:type) { "AWS::Lambda::Function" }
    let(:logical_name) { "Function" }
    it_behaves_like "general definition"
  end

  describe "AWS/SNS/Topic.yaml" do
    let(:type) { "AWS::SNS::Topic" }
    let(:logical_name) { "Topic" }
    it_behaves_like "general definition"
  end

  describe "AWS/SNS/TopicPolicy.yaml" do
    let(:type) { "AWS::SNS::TopicPolicy" }
    let(:logical_name) { "TopicPolicy" }
    it_behaves_like "general definition"
  end

  describe "AWS/ElasticLoadBalancing/LoadBalancer" do
    let(:type) { "AWS::ElasticLoadBalancing::LoadBalancer" }
    let(:logical_name) { "lb" }
    it_behaves_like "general definition"
  end

  describe "AWS/IAM/ManagedPolicy" do
    let(:type) { "AWS::IAM::ManagedPolicy" }
    let(:logical_name) { "mp" }
    it_behaves_like "general definition"
  end

  describe "AWS/CloudFront/Distribution" do
    let(:type) { "AWS::CloudFront::Distribution" }
    let(:logical_name) { "cfd" }
    it_behaves_like "general definition"
  end

  describe "AWS/Route53/HostedZone" do
    let(:type) { "AWS::Route53::HostedZone" }
    let(:logical_name) { "zone" }
    it_behaves_like "general definition"
  end

  describe "AWS/Route53/RecordSet" do
    let(:type) { "AWS::Route53::RecordSet" }
    let(:logical_name) { "rd" }
    it_behaves_like "general definition"
  end

  describe "AWS/Route53/HealthCheck" do
    let(:type) { "AWS::Route53::HealthCheck" }
    let(:logical_name) { "rchk" }
    it_behaves_like "general definition"
  end
  
  describe "AWS/Route53/RecordSetGroup" do
    let(:type) { "AWS::Route53::RecordSetGroup" }
    let(:logical_name) { "rdgroup" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/Instance" do
    let(:type) { "AWS::EC2::Instance" }
    let(:logical_name) { "ec2" }
    it_behaves_like "general definition"
  end
  
  describe "AWS/EC2/SecurityGrouup" do
    let(:type) { "AWS::EC2::SecurityGroup" }
    let(:logical_name) { "sg" }
    it_behaves_like "general definition"
  end
  
  describe "AWS/EC2/SpotFleet" do
    let(:type) { "AWS::EC2::SpotFleet" }
    let(:logical_name) { "sf" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/VPC" do
    let(:type) { "AWS::EC2::VPC" }
    let(:logical_name) { "vpc" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/InternetGateway" do
    let(:type) { "AWS::EC2::InternetGateway" }
    let(:logical_name) { "igw" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/VPCGatewayAttachment" do
    let(:type) { "AWS::EC2::VPCGatewayAttachment" }
    let(:logical_name) { "gwa" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/DHCPOptions" do
    let(:type) { "AWS::EC2::DHCPOptions" }
    let(:logical_name) { "dhcp" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/VPCDHCPOptionsAssociation" do
    let(:type) { "AWS::EC2::VPCDHCPOptionsAssociation" }
    let(:logical_name) { "dhcpAssociation" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/VPCEndpoint" do
    let(:type) { "AWS::EC2::VPCEndpoint" }
    let(:logical_name) { "vpcEndpoint" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/EIP" do
    let(:type) { "AWS::EC2::EIP" }
    let(:logical_name) { "eip" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/Subnet" do
    let(:type) { "AWS::EC2::Subnet" }
    let(:logical_name) { "subnet" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/NetworkAcl" do
    let(:type) { "AWS::EC2::NetworkAcl" }
    let(:logical_name) { "networlacl" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/NetworkAclEntry" do
    let(:type) { "AWS::EC2::NetworkAclEntry" }
    let(:logical_name) { "entry" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/RouteTable" do
    let(:type) { "AWS::EC2::RouteTable" }
    let(:logical_name) { "rt" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/SubnetRouteTableAssociation" do
    let(:type) { "AWS::EC2::SubnetRouteTableAssociation" }
    let(:logical_name) { "rta" }
    it_behaves_like "general definition"
  end

  describe "AWS/EC2/Route" do
    let(:type) { "AWS::EC2::Route" }
    let(:logical_name) { "route" }
    it_behaves_like "general definition"
  end

  describe "AWS/ECS/Cluster" do
    let(:type) { "AWS::ECS::Cluster" }
    let(:logical_name) { "cluster" }
    it_behaves_like "general definition"
  end

  describe "AWS/ECS/Service" do
    let(:type) { "AWS::ECS::Service" }
    let(:logical_name) { "ecsvc" }
    it_behaves_like "general definition"
  end

  describe "AWS/ECS/TaskDefinition" do
    let(:type) { "AWS::ECS::TaskDefinition" }
    let(:logical_name) { "ecstk" }
    it_behaves_like "general definition"
  end

  describe "AWS/KMS/Key" do
    let(:type) { "AWS::KMS::Key" }
    let(:logical_name) { "KmsKey" }
    it_behaves_like "general definition"
  end

  describe "AWS/Kinesis/Stream" do
    let(:type) {"AWS::Kinesis::Stream"}
    let(:logical_name) { "stream" }
    it_behaves_like "general definition"
  end
end

