module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_post, mutation: Mutations::CreatePost
    field :create_section, mutation: Mutations::CreateSection
    field :update_post, mutation: Mutations::UpdatePost
    field :delete_post, mutation: Mutations::DeletePost
    field :delete_section, mutation: Mutations::DeleteSection
      # description: "An example field added by the generator"
    # def test_field
      # "Hello World"
    # end
  end
end
