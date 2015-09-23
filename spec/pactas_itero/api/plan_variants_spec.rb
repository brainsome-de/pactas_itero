require 'spec_helper'

describe PactasItero::Api::PlanVariants do
  describe '.plan_variants' do
    it 'requests the correct resource' do
      client = PactasItero::Client.new(bearer_token: 'bt')
      request = stub_get('/api/v1/PlanVariants').
      to_return(
        body: fixture('plan_variants.json'),
        headers: { content_type: 'application/json; charset=utf-8'}
      )

      client.plan_variants

      expect(request).to have_been_made
    end

    it 'returns an array of plan_variants' do
      client = PactasItero::Client.new(bearer_token: 'bt')
      request = stub_get('/api/v1/PlanVariants').
      to_return(
        body: fixture('plan_variants.json'),
        headers: { content_type: 'application/json; charset=utf-8'}
      )

      plan_variants = client.plan_variants

      expect(plan_variants).to be_a Array
    end
  end

  describe '.plan_variant' do
    it "requests the correct resource" do
      client = PactasItero::Client.new(bearer_token: 'bt')
      request = stub_get('/api/v1/PlanVariants').
      to_return(
        body: fixture('plan_variants.json'),
        headers: { content_type: 'application/json; charset=utf-8'}
      )

      plan_variant = client.plan_variant('55e6fe6f1d8dd20db09e3c67') # id from fixtures

      expect(request).to have_been_made

      expect(plan_variant.id).to eql('55e6fe6f1d8dd20db09e3c67')
    end
  end
end
