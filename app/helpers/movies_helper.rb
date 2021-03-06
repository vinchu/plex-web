module MoviesHelper
  def movie_data_for_view(movie)
    {
      :title => movie.title,
      :description => movie.plot,
      :posters => {
        :small => {:url => movie_poster_path(movie, :small, :format => 'jpg'), :width => Thumbnail::SIZES[:small]},
        :default => {:url => movie_poster_path(movie, :default, :format => 'jpg'), :width => Thumbnail::SIZES[:default]},
      },
      :fanarts => {:default => {:url => movie_fanart_path(movie, :default, :format => 'jpg')}},
    }
  end
end
