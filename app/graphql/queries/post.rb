# module Queries
#   class Post< Queries::BaseQuery
#     field :post, [PostType], null: true
   
#    def resolve
#       Post.find(id)
#     end
    
#   end
# end

module Queries
	module Post 
	    class Post < Queries::BaseQuery
	      description 'Returns a single Post based on id'
	 
	      type Types::PostType, null: true
	 
	      argument :id, ID, required: true
	 
	      def resolve(id:)
	        ::Post.find(id)
	      end
	    end
	end    
end