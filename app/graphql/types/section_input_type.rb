module Types
  class SectionInputType < Types::BaseObject
		argument :header, String, required: false
    	argument :footer, String, required: false
    	argument :body, String, required: false
    	argument :title, String, required: true
    	argument :post_id, ID, required: true
   end
end