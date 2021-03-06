shared_examples 'a find operation' do
  let(:resource_name) { described_class.to_s.gsub(/^.*::/, '').downcase }

  it "can fetch a specific resource's occurrence by ID" do
    VCR.use_cassette("#{resource_name}/find") do
      resource = described_class.find(resource_id)
      expect(resource).to be_a(described_class)
    end
  end
end
