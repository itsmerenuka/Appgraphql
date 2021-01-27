module Mutations
	class CreatePost < BaseMutation
		argument :author, String, required: true
    	argument :description, String, required: true
    	argument :category_id, ID, required: true
    	# argument :sections , Types::SectionInputType, required: true

    		type Types::PostType


	    def resolve(author: , description:, category_id:)
	      	Post.create!(
	        author: author,
	        description: description,
	        category_id: category_id
	      )
	      # p.sections.create()
	      # ap "Params = #{params}"
	       # p = Post.create( author: author, description: description, category_id: category_id)
	       # sections = p.sections.create
	       # p.save
	    end
	end
end


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
#  createPost(input: {author: "John", description: "Roy", categoryId: 2, 
#  sections: [{body:  "body...", header: "This is header...", footer: "footer.....", title: "First title"}]
# }
# )
# id
# }