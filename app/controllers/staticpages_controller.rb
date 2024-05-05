class StaticpagesController < ApplicationController
  def top; end

  def share
    @term = view_context.translate_term(params[:term])
    @limit = params[:limit]
    @kind = params[:kind]
    @spotify_ids = params[:id]
  end
end
