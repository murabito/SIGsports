require "administrate/base_dashboard"

class NewsArticleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sport: Field::BelongsTo,
    id: Field::Number,
    headline: Field::String,
    date_posted: Field::DateTime,
    url: Field::String,
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
    :date_posted,
    :headline
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :sport,
    :headline,
    :url,
    :date_posted
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sport,
    :headline,
    :url,
    :date_posted
  ].freeze

  # Overwrite this method to customize how news articles are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(news_article)
  #   "NewsArticle ##{news_article.id}"
  # end
end
