module Mutations
	class CreateSection < BaseMutation
		# argument :id, ID, required: true
		argument :header, String, required: false
    	argument :footer, String, required: false
    	argument :body, String, required: false
    	argument :title, String, required: true
    	argument :post_id, ID, required: true

    	# type Types::SectionInputType

	    def resolve(header: nil, footer: nil, body: nil, title: nil, post_id: nil)
	      Section.create!(
	        header: header,
	        footer: footer,
	        body: body,
	        title: title,
	        post_id: post_id
	      )
	    end
	end
end

# mutation {
#   createSection(input: {header: "AAAA", footer: "BBB", body: "XYZ", title: "HHHHH", postId: 1}) {
#     id
#   }
# }


