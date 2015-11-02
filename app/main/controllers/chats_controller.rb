module Main
  class ChatsController < Volt::ModelController
    model :store
    reactive_accessor :new_comment_entry

    def index
      self.new_comment_entry = ''
    end

    def submit_comment
      return unless new_comment_entry.present?
      NewObjectTask.new_comment(new_comment_entry, params._friend)
      index
    end
  end
end
