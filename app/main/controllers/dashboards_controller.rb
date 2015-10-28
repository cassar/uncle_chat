module Main
  class DashboardsController < Volt::ModelController
    def new_friend
      store.friends.create(
        name: 'New Friend Name',
        image: 'New Friend Image URL')
    end
  end
end
