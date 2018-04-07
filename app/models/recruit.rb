class Recruit < ApplicationRecord
  has_one :message
  belongs_to :field
  has_many :client_recruit_relations
  has_one :user
  
  def self.getMyRecruitList(user_id)
    recruit_ids = ClientRecruitRelation.where(user_id: user_id)
    my_recruits = recruit_ids.map{ |a| Recruit.find(a.recruit_id)}
  end
end
