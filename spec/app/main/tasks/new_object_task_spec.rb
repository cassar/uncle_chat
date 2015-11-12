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
    @friend = store.friends.where(name: 'James').first.sync
    @entry = 'Have a nice day.'
    @friend.entry = @entry
    NewObjectTask.new_comment(@friend.name).sync
    @comment = store.comments.first.sync

    expect(store.comments.count.sync).to eq(1)
    expect(@comment.entry).to eq(@entry)
    expect(@comment.colour).to eq(@style.colour)
    expect(@comment.sent_at.present?).to eq(true)
  end

  it 'should test the new_comment method with empty entry' do
    @friend = store.friends.where(name: 'James').first.sync
    @entry = ''
    @friend.entry = @entry
    NewObjectTask.new_comment(@friend.name).sync
    @comment = store.comments.first.sync

    expect(store.comments.count.sync).to eq(0)
  end

  it 'should test the create_comment method with an entry and a style' do
    @friend = store.friends.where(name: 'James').first.sync
    @entry = 'Have a nice day.'
    @friend.entry = @entry
    @style = store.styles.first.sync
    @comment = NewObjectTask.create_comment(@style, @friend).sync

    expect(store.comments.count.sync).to eq(1)
    expect(@comment.entry).to eq(@entry)
    expect(@comment.colour).to eq(@style.colour)
    expect(@comment.sent_at.present?).to eq(true)
  end
end
