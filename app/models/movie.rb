class Movie < ActiveRecord::Base
    # create instance with title
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    # .first_movie
    # returns the first item in the movies table
    def self.first_movie
        Movie.first
    end

    # .last_movie
    # returns the first item in the movies table
    def self.last_movie
        Movie.last
        # self.last
    end

    # .movie_count
    # returns the number of items in the movies table
    def self.movie_count
        self.count
        # Movie.count
    end

    # .find_movie_with_id
    # returns the movie with the corresponding id (FAILED - 1)
    def self.find_movie_with_id(id)
        # self.find(id)
        Movie.find(id)

    end

    # .find_movie_with_attributes
    # returns the movie with the corresponding attributes (FAILED - 2)
    def self.find_movie_with_attributes(attribute)
        self.find_by(attribute)
        # Movie.find_by(attribute)
    end

    # .find_movies_after_2002
    # returns a list of movies released after 2002
    def self.find_movies_after_2002
        # self.where("release_date > 2002")
        # self.where(["release_date > ?", "2002"])
        # Movie.where("release_date > 2002")
        Movie.where(["release_date > ?", "2002"])
    end

end