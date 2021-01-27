module Mutations
  class UpdatePost< BaseMutation
      argument :id, ID, required: true
      argument :author, String, required: true
      # argument :description, String, required: true
      # argument :category_id, ID, required: true

      type Types::PostType


    def resolve(id:, **attributes)
      post = Post.find(id)
      post.update!(attributes)     
    end
  end
end

# mutation{
#   updatePost(input: {id: 1, author: "Zane"}){
#     id
#     description
#     author
#   }
# }