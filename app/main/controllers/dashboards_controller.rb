module Main
  class DashboardsController < Volt::ModelController
    def new_friend
      NewObjectTask.new_friend
    end
  end
end
