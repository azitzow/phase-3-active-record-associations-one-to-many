class Game < ActiveRecord::Base
  has_many :reviews

  def reviews
    Review.where(game_id: self.id)
  end

  def create_game (title)
    self.reviews << Review.new(score: score, comment: comment, game_id: self.id)
  end
end
