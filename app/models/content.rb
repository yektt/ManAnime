class Content < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true, inclusion: {in: %w(anime manga)}
  validates :tags, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :start_date, presence: true
  validates :volume_or_season_number, presence: true
  validates :episode_or_chapter_number, presence: true
end
