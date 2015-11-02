require 'spec_helper'

describe Style do
  before do
    store.friends.create(name: 'James').sync
  end

  it 'should create a style from a friend' do
    @friend = store.friends.first.sync
    @style = store.styles.create(
      colour: 'black',
      background: 'blue',
      family: 'ancient',
      size: 'medium',
      friend_id: @friend.id).sync

    expect(@friend.style.sync).to eq(@style)
  end
end
