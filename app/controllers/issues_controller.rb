class IssuesController < ApplicationController
 
  before_filter :authenticate_user!
 
  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

end
