require "rails_helper"

RSpec.describe "V1::Gifs", type: :request do
  describe "GET /search" do
    subject { get "/v1/gif/search"; response.body }

    let(:params) { {} }

    context "when no params" do
      let(:params) { {} }
      let(:search_term) { ['a', 'b', 'c'] }

      before do
        create(:gif, search_term: search_term)
      end

      it "should return most searched gifs" do
        expect(subject).to eq([build(:gif, search_term: search_term)].to_json)
      end
    end

    context "when params" do
      let(:params) { { query: query, before: before, after: after } }
      let(:query) {}
      let(:before) {}
      let(:after) {}

      context "when only query" do
        let(:query) { 'my search terms' }

        context "when query matches results" do
          context "when match only existing gifs" do
            before do
              create_list(:gif, 10, search_term: %w[my search terms])
            end

            it "should return only existing results" do
              expect(subject).to eq(build_list(:gif, 10, search_term: %w[my search terms]).to_json)
            end
          end

          xcontext "when match not existing gifd" do
          end

          xcontext "when existing gifs are not enough" do
          end
        end

        xcontext "when query does not match any result" do
        end
      end
    end
  end
end
