module Queries
  class Posts< Queries::BaseQuery
    field :posts, [PostType], null: true

    type Types::PostType
   def resolve
      Post.all
    end
    


  end
end
