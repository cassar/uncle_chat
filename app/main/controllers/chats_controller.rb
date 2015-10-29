module Main
  class ChatsController < Volt::ModelController
    model :store
    model :page
    reactive_accessor :new_comment_entry

    def index
      self.new_comment_entry = ''
    end

    def submit_comment
      return unless new_comment_entry.present?
      NewObjectTask.new_comment(new_comment_entry, friend_id)
      index
    end
  end
end
