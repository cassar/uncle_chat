require 'spec_helper'

describe Main::MainController do
	before do
		@main_controller = Main::MainController.new(volt_app)
		store.friends.create(name: 'Harper', image: 'images/harper').sync
	  	store.friends.create(name: 'Jessica', image: 'images/jessica').sync
	end

end
