class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
    @superhero = Superhero.new
  end

  def batman_vs_superman_post
    @superhero = Superhero.create(email_batman: params[:superhero][:email_batman],email_superman: params[:superhero][:email_superman], votes_batman: params[:superhero][:votes_batman], votes_batman: params[:superhero][:votes_superman])
  end

end
