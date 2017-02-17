require 'spec_helper'

module LightspeedRestaurant
  describe Employee do
    setup_api_token

    subject { LightspeedRestaurant::Employee }

    context 'listing' do
      it_behaves_like 'a list operation' do
        let(:results_count) { 3 }
      end
    end
  end
end
