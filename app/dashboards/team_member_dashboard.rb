require "administrate/base_dashboard"

class TeamMemberDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sports: Field::HasMany,
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    position: Field::String,
    photo_url: Field::String,
    email: Field::String,
    twitter_url: Field::String,
    facebook_url: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :sports,
    :id,
    :first_name,
    :last_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :sports,
    :id,
    :first_name,
    :last_name,
    :position,
    :photo_url,
    :email,
    :twitter_url,
    :facebook_url,
    :description,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sports,
    :first_name,
    :last_name,
    :position,
    :photo_url,
    :email,
    :twitter_url,
    :facebook_url,
    :description,
  ].freeze

  # Overwrite this method to customize how team members are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(team_member)
  #   "TeamMember ##{team_member.id}"
  # end
end
