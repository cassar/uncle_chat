require 'spec_helper'

describe Main::ChatsController do
  before do
    @chats_controller = Main::ChatsController.new(volt_app)
    @friend = store.friends.create(name: 'James').sync
    @friend.entry = ''
    @style = @friend.styles.create.sync
  end
end
