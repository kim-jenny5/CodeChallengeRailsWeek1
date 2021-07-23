module PartiesHelper
    # def helper_method
    #     tag.h1("Hello!")
    # end
    


    # def party_errors(party)
    #     if party.errors.any?
    #         tag.h1("#{pluralize(party.errors.count, "error")} prohibited this party from being saved:")
    #         party.errors.each do |error|
    #             error.full_message
    #         end
    #     end
        #     <div id="error_explanation">
        #       <h2><%= pluralize(@party.errors.count, "error") %> prohibited this party from being saved:</h2>
          
        #       <ul>
        #         <% @party.errors.each do |error| %>
        #           <li><%= error.full_message %></li>
        #         <% end %>
        #       </ul>
        #     </div>
        #   <% end %>
    # end

    # def parties_category
    #     <% if !params[:category_id] %>  
    #         <p><%= f.collection_select :category_id, Category.all, :id, :name %></p>
        
    #         <%= f.fields_for :category do |category_builder| %>
    #           <%= category_builder.text_field :name %>
    #         <% end %>
    #         <br><br>
    #       <% else %>
    #         <%= f.hidden_field :category_id %>
    #       <% end %>
    # end
end
