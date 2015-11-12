class NewObjectTask < Volt::Task
  def new_friend
    @friend = store.friends.create(
      name: 'New Friend Name',
      image: 'New Friend Image URL').sync
    @friend.styles.create.sync
    nil
  end

  def new_comment(friend_name)
    @friend = store.friends.where(name: friend_name).first.sync
    return unless @friend.entry.present?
    @style = @friend.styles.first.sync
    create_comment(@style, @friend).sync
    @friend.entry = ''
    nil
  end

  def create_comment(style, friend)
    store.comments.create(
      entry: friend.entry,
      colour: style.colour,
      size: style.size,
      family: style.family,
      background: style.background,
      author: friend.name,
      sent_at: Time.now)
  end
end
