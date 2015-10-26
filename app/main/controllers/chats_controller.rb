module Main
  class ChatsController < Volt::ModelController
    model :store
    reactive_accessor :new_comment_entry

    def index
      self.new_comment_entry = ''
    end

    def submit_comment
      if new_comment_entry.present?
        store.comments.create(
          entry: new_comment_entry,
          colour: _colour,
          size: _size,
          family: _family)
        index
      end
    end
  end
end
