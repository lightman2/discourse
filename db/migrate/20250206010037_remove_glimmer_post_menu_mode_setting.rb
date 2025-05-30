# frozen_string_literal: true
class RemoveGlimmerPostMenuModeSetting < ActiveRecord::Migration[7.2]
  def up
    execute <<~SQL
      DELETE FROM site_settings
      WHERE name = 'glimmer_post_menu_mode'
    SQL
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
