require "rails_helper"

RSpec.describe "V1::Gifs", type: :request do
  describe "GET /search" do
    subject { get "/v1/gif/search"; response }

    let(:params) { {} }

    context "when no params" do
      let(:params) { {} }

      it "should return most searched gifs" do
        expect(subject.body).to eq(build_list(:gif, 1).to_json)
      end
    end
  end
end
