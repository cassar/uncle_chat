require 'spec_helper'

describe NewObjectTask, type: :task do
  before do
    NewObjectTask.new_friend.sync
    @friend = store.friends.first.sync
    @friend.name = 'James'
    @style = @friend.styles.first.sync
    @style.colour = 'red'
  end

  it 'should test the new_friend method with a name entry' do
    expect(store.friends.count.sync).to eq(1)
    expect(store.styles.count.sync).to eq(1)
  end

  it 'should test the new_comment method with an entry' do
    @entry = 'How do you do?'
    @friend = store.friends.where(name: 'James').first.sync
    NewObjectTask.new_comment(@entry, @friend.name).sync
    @comment = store.comments.first.sync

    expect(store.comments.count.sync).to eq(1)
    expect(@comment.entry).to eq(@entry)
    expect(@comment.colour).to eq(@style.colour)
  end

  it 'should test the create_comment method with an entry and a style' do
    @entry = 'How do you do?'
    @friend = store.friends.where(name: 'James').first.sync
    @style = store.styles.first.sync
    @comment = NewObjectTask.create_comment(@entry, @style, @friend).sync

    expect(store.comments.count.sync).to eq(1)
    expect(@comment.entry).to eq(@entry)
    expect(@comment.colour).to eq(@style.colour)
  end
end
