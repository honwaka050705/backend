# frozen_string_literal: true

module Types
  class YearType < Types::BaseObject
    field :id, ID, null: false
    field :generation, Integer, null: false
    field :emperor_name, String, null: false
    field :ad_enthronement_at, GraphQL::Types::ISO8601Date, null: false
    field :ad_abdication_at, GraphQL::Types::ISO8601Date, null: false
  end
end
