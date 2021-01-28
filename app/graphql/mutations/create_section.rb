module Mutations
  class CreateSection < BaseMutation
    # argument :id, ID, required: true
    argument :header, String, required: false
    argument :footer, String, required: false
    argument :body, String, required: false
    argument :title, String, required: true
    argument :post_id, ID, required: true
    field :section, Types::SectionType, null: false

    def resolve(header: nil, footer: nil, body: nil, title: nil, post_id: nil)
      p = Post.find(post_id)
      section = p.sections.create!(
        header: header,
        footer: footer,
        body: body,
        title: title,
        post_id: post_id
      )
      { section: section }
    end
  end
end
# mutation {
#   createSection(header: "AAAA", footer: "BBB", body: "XYZ", title: "HHHHH", postId: 1) {
#     section{
#       header
#       footer
#     }
#   }
# }