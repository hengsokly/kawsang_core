class AddApiKeyToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :kawsang_users, :api_key, :string
  end
end
