require "administrate/base_dashboard"

class FeaturedPhotoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sport: Field::BelongsTo,
    athlete: Field::BelongsTo,
    id: Field::Number,
    image_url: Field::String,
    display_status: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :sport,
    :athlete,
    :id,
    :image_url,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :sport,
    :athlete,
    :id,
    :image_url,
    :display_status,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sport,
    :athlete,
    :image_url,
    :display_status,
  ].freeze

  # Overwrite this method to customize how featured photos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(featured_photo)
  #   "FeaturedPhoto ##{featured_photo.id}"
  # end
end
