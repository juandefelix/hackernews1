class Commentvote < ActiveRecord::Base
  belongs_to :comment

  def init
    self.votes ||= 0
  end

  def upvote
    self.votes +=1
  end

  def downvote
    self.votes -=1
  end
end
