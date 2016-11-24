class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def votes
    @batman_votes = batman_votes_counter
    @superman_votes = superman_votes_counter
  end

  def batman_vs_superman
    @superhero = Superhero.new
  end

  def batman_vs_superman_post
    @superhero = Superhero.create(email_batman: params[:superhero][:email_batman],email_superman: params[:superhero][:email_superman], votes_batman: params[:superhero][:votes_batman], votes_batman: params[:superhero][:votes_superman])
    redirect_to pages_votes_path, alert: 'Gracias por votar'
  end

  def votes_generator
    (Superhero.all).group_by{ |x| (x.email_batman).present? }
  end

  def superman_votes_counter
    votes_hash = votes_generator
    votes_hash[false].count
  end

  def batman_votes_counter
    votes_hash = votes_generator
    votes_hash[true].count
  end

end
