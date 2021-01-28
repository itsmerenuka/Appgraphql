module Mutations
  class DeleteSection < BaseMutation
    argument :id, ID, required: true
    field :section, Types::SectionType, null: false

    def resolve(id:)
        section = Section.find(id)
        section.destroy!
      { section: section }
    end
  end
end
# mutation {
#   deleteSection(id: 2) {
#     section{
#       header
#       footer
#     }
#   }
# }