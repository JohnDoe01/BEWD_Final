class IssuesController < ApplicationController
 
  def index
    @issues = Issue.all
  end

  def show
    @issues = Issue.find(params[:id])
  end

end
