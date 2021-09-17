# frozen_string_literal: true

require 'migration/table_dropper'

class DropGithubUserInfos < ActiveRecord::Migration[6.0]
  DROPPED_TABLES ||= %i{ github_user_infos }

  def up
    DROPPED_TABLES.each do |table|
      drop_table table
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
