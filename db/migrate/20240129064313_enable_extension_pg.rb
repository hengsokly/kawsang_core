class EnableExtensionPg < ActiveRecord::Migration[7.1]
  def change
    # Enhances the security capabilities of PostgreSQL
    enable_extension "pgcrypto"
    # Support uuid
    enable_extension "uuid-ossp"
    # Support enum type
    enable_extension "plpgsql"
  end
end
