require_relative '../../config/application'

class RenameColumn < ActiveRecord::Migration[5.0]

  def change
    rename_column :songs, :song_duration, :duration
  end

end
