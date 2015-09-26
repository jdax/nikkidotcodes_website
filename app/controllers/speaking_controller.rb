class SpeakingController < ApplicationController

  def index
    @speakings = Speaking.all
  end

  def show
    @speaking = Speaking.find(params[:id])
  end

end
