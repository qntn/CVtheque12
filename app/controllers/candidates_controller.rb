# encoding: utf-8
class CandidatesController < ApplicationController
  before_filter :authenticate_user!
  def create
    puts params.inspect
    offer_id = params[:candidate][:offer_id]
    @candidate = Candidate.new :offer_id => offer_id, :user_id => current_user
    @candidate.save
    redirect_to offer_path offer_id
  end
end
