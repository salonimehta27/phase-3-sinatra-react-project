class ActionComment  < ActiveRecord::Base
    belongs_to :action 

    def self.findByActionId(action_id)
        self.all.filter {|x| x.action_id==action_id}
    end
end