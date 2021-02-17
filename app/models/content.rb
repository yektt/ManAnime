class Content < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true, inclusion: {in: %w(anime manga)}
  validates :tags, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :start_date, presence: true
  validates :volume_or_season_number, presence: true
  validates :episode_or_chapter_number, presence: true

  has_and_belongs_to_many :categories, class_name: 'Genre'
  has_and_belongs_to_many :characters, class_name: 'Character'

  scope :most_recent_anime, -> { order(created_at: :asc).where(category: 'anime').limit(5) }
  scope :most_recent_manga, -> { order(created_at: :asc).where(category: 'manga').limit(5) }

end
