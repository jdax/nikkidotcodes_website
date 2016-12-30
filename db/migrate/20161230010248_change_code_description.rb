class ChangeCodeDescription < ActiveRecord::Migration

    def up
      # simple and straightforward
      change_column :codes, :description, :string
    end

    # but why cant it just be:
    #   change_column :product, :long_description, :string
    # ???
    # because effin databases don't like you, that's why.
    def down

      # create a temporary column to hold the truncated values
      # we'll rename this later to the original column name
      add_column :codes, :temp_description, :string

      # use #find_each to load only part of the table into memory
      Code.find_each do |code|
        temp_description = code.description

        # test if the new value will fit into the truncated field
        if code.description.length > 255
          temp_description = product.description[0,254]
        end

        # use #update_column because it skips validations AND callbacks
        code.update_column(:temp_description, temp_description)
      end

      # delete the old column since we have all the data safe in the
      # temp_description
      remove_column :codes, :description

      # rename the temp_column to our original column name
      rename_column :codes, :temp_description, :description
    end


end
