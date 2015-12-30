require 'spec_helper'

describe Main::ChatsController do
  before do
    @chats_controller = Main::ChatsController.new(volt_app)
    store.friends.create(name: 'James').sync
  end

  it 'should test the friend_present? method with a friend' do
    store._name = 'James'
    @result = @chats_controller.friend_present?.sync

    expect(@result).to eq(true)
  end

  it 'should test the friend_present? method with no friend' do
    store._name = 'Jame'
    @result = @chats_controller.friend_present?.sync

    expect(@result).to eq(false)
  end
end
