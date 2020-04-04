class AwsTextsController < ApplicationController

before_action :authenticate_user!

def index
  @awstexts = AwsText.all.order(id: "ASC")
end

def show
  @awstext = AwsText.find(params[:id])
end

end
