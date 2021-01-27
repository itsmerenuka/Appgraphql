module Mutations
  class UpdatePost< BaseMutation
   argument :author, String, required: true
      argument :description, String, required: true
      argument :category_id, ID, required: true

    def resolve(id:, author:, description:, category_id:)
      post = Post.find(id)
      post.update!(author: author, description: description, category_id: category_id)
      {
        post: post
      }
      
    end
  end
end