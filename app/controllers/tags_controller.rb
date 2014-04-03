class TagsController < ApplicationController
  def view
    @tags = Tag.all
    render('tags/view.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      redirect_to('/tags')
    else
      render('tags/new.html.erb')
    end
  end
end
