require 'spec_helper'

describe Comment do
  before do
    store.friends.create(name: 'James').sync
  end

  it 'should create a comment belonging to a friend' do
    @friend = store.friends.where(name: 'James').first.sync
    @comment = @friend.comments.create(
      entry: 'How do you do?',
      colour: 'blue',
      size: 'medium',
      family: 'sansserify',
      background: 'red',
      sent_at: Time.now).sync

    expect(store.comments.count.sync).to eq(1)
  end
end
