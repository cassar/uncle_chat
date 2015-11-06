require 'spec_helper'

describe Style do
  before do
    store.friends.create(name: 'James').sync
  end

  it 'should create a style from a friend' do
    @friend = store.friends.first.sync
    @style = @friend.styles.create(
      colour: 'black',
      background: 'blue',
      family: 'ancient',
      size: 'medium',
      friend_id: @friend.id).sync

    expect(@friend.styles.first.sync).to eq(@style)
  end
end
