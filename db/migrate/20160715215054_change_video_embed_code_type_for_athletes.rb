class ChangeVideoEmbedCodeTypeForAthletes < ActiveRecord::Migration
  def change
    change_column :athletes, :video_embed_code, :text
  end
end
