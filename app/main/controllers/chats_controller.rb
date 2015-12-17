module Main
  class ChatsController < Volt::ModelController
    model :store

    def index
      page._formatter = "colour"
    end

    def set_background
      page._formatter = "background"
    end

    def set_colour
      page._formatter = "colour"
    end

    def set_size
      page._formatter = "size"
    end

    def set_family
      page._formatter = "family"
    end

    def submit_comment
      NewObjectTask.new_comment(params._name)
    end

    def friend_present?
      friends.where(name: _name.capitalize).first.then(&:present?)
    end
  end
end
