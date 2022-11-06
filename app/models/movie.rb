class Movie < ActiveRecord::Base
    
    
    def self.first_movie
        self.first
    end
    def self.last_movie
        self.last
    end
    def self.movie_count
        self.count
    end
    def self.find_movie_with_id
        Movie.where(id:id)
    end
    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end
    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end
    def self.update_with_attributes(title)
        self.update(attributes)
    end
    def self.update_all_titles(title)
        self.update(title:title)
    end
    def self.delete_by_id(id)
        movie = self.find(id)
        movie.delete
    end
    def self.delete_all_movies
        self.delete_all
    end


end