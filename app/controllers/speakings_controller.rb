class SpeakingsController < ApplicationController

  def index
    @speakings = Speaking.all
  end

end
