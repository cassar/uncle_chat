module Main
  class ChatsController < Volt::ModelController
    model :store
    reactive_accessor :new_comment_entry

    def index
      self.new_comment_entry = ''
    end

    def submit_comment
      return unless new_comment_entry.present?
      store.comments.create(
        entry: new_comment_entry,
        colour: _colour,
        size: _size,
        family: _family,
        background: _background,
        author: params._name)
      index
    end
  end
end
