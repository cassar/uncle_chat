require 'spec_helper'

describe Main::ChatsController do
  before do
    @chats_controller = Main::ChatsController.new(volt_app)
    @friend = store.friends.create(name: 'James').sync
    @style = @friend.styles.create.sync
  end

  it 'should change entry and clear on load' do
    @chats_controller.new_comment_entry = 'sample comment'
    expect(@chats_controller.new_comment_entry).to eq('sample comment')

    @chats_controller.index

    expect(@chats_controller.new_comment_entry).to eq('')
  end

  it 'should not make new comment object' do
    @chats_controller.new_comment_entry = ''
    expect(@chats_controller.new_comment_entry).to eq('')

    @chats_controller.submit_comment

    expect(store.comments.count.sync).to eq(0)
  end
end
