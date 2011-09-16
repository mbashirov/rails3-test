class ProjectsController < ApplicationController
  def show
    logger.debug request.inspect
  end
end
