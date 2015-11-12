module Main
  class ChatsController < Volt::ModelController
    model :store

    def index
    end

    def submit_comment
      NewObjectTask.new_comment(params._name)
      index
    end
  end
end
