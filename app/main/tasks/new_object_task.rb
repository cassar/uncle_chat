class NewObjectTask < Volt::Task
  def new_friend
    @friend = store.friends.create(
      name: 'New Friend Name',
      image: 'New Friend Image URL').sync
    @friend.styles.create.sync
  end

  def new_comment(entry, friend_name)
    @friend = store.friends.where(name: friend_name).first.sync
    @style = @friend.styles.first.sync
    create_comment(entry, @style, @friend).sync
  end

  def create_comment(entry, style, friend)
    store.comments.create(
      entry: entry,
      colour: style.colour,
      size: style.size,
      family: style.family,
      background: style.background,
      author: friend.name)
  end
end
