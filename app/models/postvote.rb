class Postvote < ActiveRecord::Base
  belongs_to :post
  after_initialize :init

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
