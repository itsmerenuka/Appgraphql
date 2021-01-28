module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :author, String, null: true
    field :description, String, null: true
    field :category, Types::CategoryType, null: true
    field :sections, [Types::SectionType], null: true
  end
end