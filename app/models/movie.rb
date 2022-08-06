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

    # Update
    # #update_with_attributes
    # updates one movie
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    # .update_all_titles
    # updates the title of all the movies 
    def self.update_all_titles(title)
        self.update(title: title)
        # Movie.update(title: title)
    end


    # Delete
    # .delete_by_id
    # deletes the record with the corresponding id
    def self.delete_by_id(id)
        # instance_movie = self.find(id)
        instance_movie = Movie.find(id)
        instance_movie.destroy

    end

    # .delete_all_movies
    # deletes all the movies from the movies table
    def self.delete_all_movies
        self.destroy_all
        # Movie.destroy_all
    end

end