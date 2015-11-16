module Main
  class ChatsController < Volt::ModelController
    model :store

    def index
    end

    def submit_comment
      NewObjectTask.new_comment(params._name)
    end

    def friend_present?
      friends.where(name: _name).first.then(&:present?)
    end
  end
end
