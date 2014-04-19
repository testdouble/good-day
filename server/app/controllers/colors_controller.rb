class ColorsController < ApplicationController
  def index
    colors = [Color.new(1,"red"), Color.new(2,"neon green")]
    render :json => colors, :each_serializer => ColorSerializer
  end
end
