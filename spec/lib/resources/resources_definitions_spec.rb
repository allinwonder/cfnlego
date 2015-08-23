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

  describe "AutoScaling/AutoScalingGroup.yaml" do
    let(:type) { "AutoScaling::AutoScalingGroup" }
    let(:logical_name) { "ASG" }

    it_behaves_like "general definition"
  end

  describe "AutoScaling/LaunchConfiguration.yaml" do
    let(:type) { "AutoScaling::LaunchConfiguration" }
    let(:logical_name) { "LC" }

    it_behaves_like "general definition"
  end

  describe "AutoScaling/LifecycleHook.yaml" do
    let(:type) { "AutoScaling::LifecycleHook" }
    let(:logical_name) { "Hook" }

    it_behaves_like "general definition"
  end


  describe "IAM/Role.yaml" do
    let(:type) { "IAM::Role" }
    let(:logical_name) { "IAMRole" }
    it_behaves_like "general definition"
  end

  describe "IAM/InstanceProfile.yaml" do
    let(:type) { "IAM::InstanceProfile" }
    let(:logical_name) { "InstanceProfile" }
    it_behaves_like "general definition"

  end
end

