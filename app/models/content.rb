class Content < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true, inclusion: {in: %w(anime manga)}
  validates :tags, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :start_date, presence: true
  validates :volume_or_season_number, presence: true
  validates :episode_or_chapter_number, presence: true
  validates :rating, presence: true
  validates :rating_number, presence: true

  has_and_belongs_to_many :categories, class_name: 'Genre'
  has_and_belongs_to_many :characters, class_name: 'Character'

  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :users

  scope :anime_list, -> { where(category: 'anime') }
  scope :manga_list, -> { where(category: 'manga') }

  scope :alphabetical_order, -> { order(name: :asc) }
  scope :most_popular, -> { order(rating: :desc).limit(5) }
  scope :unfinished, -> { where(end_date: nil) }
  scope :most_recent, -> { order(created_at: :desc).limit(5) }

  scope :name_contains, -> (term) { where('name LIKE ?', "%#{term}%") }
  scope :tag_contains, -> (term) { where('tags LIKE ?', "%#{term}%") }
  scope :search, ->(search_term) { name_contains(search_term).or(tag_contains(search_term)).alphabetical_order }
  scope :year, -> { order(start_date: :asc) }

  paginates_per 6

  after_initialize :default_rating!

  def default_rating!
    self.rating ||= 0
    self.rating_number ||= 0
  end
end
