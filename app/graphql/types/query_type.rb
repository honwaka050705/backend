module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    include Calendar::NipponWestern

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :years, [Types::YearType, null: false]
    def years
      Year.all
    end

    field :to_ad, String, null: false do
      argument :emperor, String, required: true
      argument :nippons_year, String, required: true
    end
    def to_ad(emperor:, nippons_year:)
      return "" if (emperor.empty? || nippons_year.empty?)
      year = Year.find_by(generation: emperor.to_i)
      nippon_to_western(year[:ad_enthronement_at].strftime('%Y'), nippons_year)
    end
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
