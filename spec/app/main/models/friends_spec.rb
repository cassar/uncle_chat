require 'spec_helper'

describe Friend do
  before do
    store.users.create(name: 'James', email: 'james@example.com').sync
  end

  it 'should make a new friend from a user' do
    @user = store.users.where(name: 'James').first.sync
    @friend = @user.friends.create(name: 'James', image: 'image.url.ex').sync

    expect(store.friends.count.sync).to eq(1)
  end
end
