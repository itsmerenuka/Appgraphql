module Mutations
	class CreatePost < BaseMutation
		argument :author, String, required: true
    	argument :description, String, required: true
    	argument :category_id, ID, required: true
    	argument :sections, [Types::SectionInputType], required: false
    	field :post, Types::PostType, null: false

	    def resolve(params)
	      p = Post.create!(
	        author: params[:author],
	        description: params[:description],
	        category_id: params[:category_id]
	      )
	      params[:sections].each do |sec|
	    	p.sections.create!(sec.to_h)
	      end
         { post: p }
	    end
	end
end

# ------------------------------------------------------------------------------------------------

# mutation {
#   createPost(input: {author: "New Author", description: "Hiiiiiiii", categoryId: 1}) {
#     id
#     author
#     description
#     category {
#       name
#     }
#   }
# }


# mutation {
#     createPost( 
#         author: "Jerry", 
#         description: "Hi this is demonstartion", 
#         categoryId: 1,
#             sections:
#             [{
#                 body: "body...", 
#                 header: "This is header.....", 
#                 footer: "This is footer.....", 
#                 title: "Looks Good"
#       }]
#   )
#   {
#     post {
#         id
#       author
#       category {
#         name
#       }
#       sections{
#         header
#         footer
#         body
#         title
#       }
#       }
#   }
# }