# frozen_string_literal: true

module Types
  class YearType < Types::BaseObject
    field :id, ID, null: false
    field :generation, Integer, null: false
    field :emperor_name, String, null: false
    field :ad, Integer, null: false
  end
end
