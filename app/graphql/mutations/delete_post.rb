module Mutations
  class DeletePost< BaseMutation
  	  argument :id, ID, required: true
      argument :author, String, required: false
      argument :description, String, required: false
      argument :category_id, ID, required: false

          field :post, Types::PostType, null: false

    def resolve(id:)
      post = Post.find(id)
      post.destroy!
       { post: post }
    end
  end
end

# mutation{
#   deletePost(input:{id: 7}){
#     	id
#     author
#   }
  
# }