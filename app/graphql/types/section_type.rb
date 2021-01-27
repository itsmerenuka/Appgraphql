module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false
    field :header, String, null: true
    field :footer, String, null: true
    field :body, String, null: true
    field :title, String, null: true
    field :post, Types::PostType, null: false
    
  end
end
