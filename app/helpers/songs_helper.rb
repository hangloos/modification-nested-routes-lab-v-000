module SongsHelper

  def artist_select(song,artist)

    if params[:artist_id]
      if song.artist.nil?
        select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
      else
        hidden_field_tag "song[artist_id]", song.artist_id
        "#{artist.name}: "
      end
    else
    select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    end
  end
end
