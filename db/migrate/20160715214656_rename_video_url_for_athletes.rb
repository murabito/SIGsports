class RenameVideoUrlForAthletes < ActiveRecord::Migration
  change_table :athletes do |t|
    t.rename :video_url, :video_embed_code
  end
end
