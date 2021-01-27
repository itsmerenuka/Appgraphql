module Mutations
	class CreatePost < BaseMutation
		argument :author, String, required: true
    	argument :description, String, required: true
    	argument :category_id, ID, required: true
    	argument :sections , Types::SectionInputType, required: true

    		# type :PostType
    		type Types::PostType


	    def resolve(params)
	    	ap "HEllo in method"
	    	ap "#{params}"
	      	p = Post.create!(
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
#       id
#       author
#       description
#     	categoryId 
#     }
#    }

# mutation {
#   createPost(input: {author: "New Author", description: "Hiiiiiiii", categoryId: 1,}) {
#       id
#       author
#       description
#     	categoryId 
#     }
#    }

