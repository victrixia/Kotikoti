class PagesController < ApplicationController

  def index
    @newsitems = Newsitem.all
  end

  def representatives
    @newsitems = Newsitem.all
  end
end