module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :author, String, null: false
    field :description, String, null: false
    field :category, Types::CategoryType, null: false
    # field :sections, [Types::SectionInputType], null: false

  end
end
