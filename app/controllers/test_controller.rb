class TestController < ApplicationController
  def index
    @organisation = Organisation.find(1) if Organisation.any?
    # A Bullet warning is raised on the following authorize! call (or a similar can? call in the controller or view):
    authorize!(:read, User.first) if User.any?
  end
end
