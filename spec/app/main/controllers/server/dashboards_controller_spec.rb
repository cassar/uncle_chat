require 'spec_helper'

describe Main::DashboardsController do
  before do
    @dashboards_controller = Main::DashboardsController.new(volt_app)
  end

  it 'should create a new friend' do
    @dashboards_controller.new_friend

    expect(store.friends.count.sync).to eq(1)
    expect(store.styles.count.sync).to eq(1)
  end
end
