require "administrate/base_dashboard"

class SportDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    athletes: Field::HasMany,
    featured_photos: Field::HasMany,
    news_articles: Field::HasMany,
    team_members: Field::HasMany,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    type_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :athletes,
    :featured_photos,
    :news_articles,
    :team_members,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :athletes,
    :featured_photos,
    :news_articles,
    :team_members,
    :id,
    :created_at,
    :updated_at,
    :type_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :athletes,
    :featured_photos,
    :news_articles,
    :team_members,
    :type_id,
  ].freeze

  # Overwrite this method to customize how sports are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sport)
  #   "Sport ##{sport.id}"
  # end
end
