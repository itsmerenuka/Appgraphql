module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :all_posts, [PostType], null: true do
      description "List of all posts"
    end

    field :post, PostType, null: false do
      description "Find post by ID"
      argument :id, ID, required: true
    end

    field :post_by_category, [PostType], null: false do
      description "Find post by categoryId"
      argument :category_id, ID, required: true
    end

    field :all_sections, [SectionType], null: false do
      description "Get list of all sections"
    end

    def all_sections
      Section.all.each do |section |
        (section.header? ? section.header : section.header = "NA")
        (section.footer? ? section.footer : section.footer = "NA")
        (section.body? ? section.body : section.body = "NA")
        (section.title? ? section.title : section.title ="NA" )
      end
    end

    def all_posts
      Post.all
    end

    def post(id:)
      Post.find(id)
    end
    
    def post_by_category(category_id:)
      posts = Post.where(category_id: category_id)
    end

# query{
#   post(id: 30){
#    author
#     description
#     category{
#       name
#     }
#     sections{
#       title
#       body
#       header
#       footer
#     }
    
#   }
# }


# {
#   allPosts
#     { 
    
#     id
#     author
#     description
#     categoryId 
    
#   }
# }
    
# query {
#   postByCategory(categoryId: 1) {
#     author
#     description  
#     category{
#       name
#     }
#   }
# }

  end
end
