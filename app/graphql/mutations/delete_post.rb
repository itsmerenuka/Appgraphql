module Mutations
  class UpdatePost< BaseMutation
      argument :author, String, required: true
      argument :description, String, required: true
      argument :category_id, ID, required: true

    def resolve(id:)
      post = Post.find(id)
      post.destroy!
      
    end
  end
end