class StaticpagesController < ApplicationController
  def top; end

  def share
    @term = translate_term(params[:term])
    @limit = params[:limit]
    @kind = params[:kind]
    @spotify_ids = params[:id]
  end
end
