class TranslateDescriptionOrder < ActiveRecord::Migration[5.0]

    def change

        rename_column :order_states, :description, :internal_description

    end

end
