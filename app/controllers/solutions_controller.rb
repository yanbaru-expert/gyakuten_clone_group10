class SolutionsController < ApplicationController

before_action :authenticate_user!

def index
  @solution = Question.find(param[:id])
end

end
