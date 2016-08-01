require "administrate/base_dashboard"

class AthleteDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sport: Field::BelongsTo,
    news_articles: Field::HasMany,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    country_code: Field::String,
    position: Field::String,
    american_team_url: Field::String,
    overseas_team: Field::String,
    college: Field::String,
    birthdate: Field::DateTime,
    height: Field::String,
    weight: Field::String,
    website_url: Field::String,
    video_embed_code: Field::Text,
    american_team_name: Field::String,
    photo: PhotoField,
    description: DescriptionField
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :first_name,
    :last_name,
    :sport,
    :photo
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :first_name,
    :last_name,
    :sport,
    :photo,
    :country_code,
    :position,
    :american_team_name,
    :american_team_url,
    :overseas_team,
    :college,
    :birthdate,
    :height,
    :weight,
    :website_url,
    :video_embed_code,
    :description,
    :news_articles,
    :created_at,
    :updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :first_name,
    :last_name,
    :sport,
    :photo,
    :country_code,
    :position,
    :american_team_name,
    :american_team_url,
    :overseas_team,
    :college,
    :birthdate,
    :height,
    :weight,
    :website_url,
    :video_embed_code,
    :description
  ].freeze

  # Overwrite this method to customize how athletes are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(athlete)
    "#{athlete.first_name} #{athlete.last_name}"
  end
end
