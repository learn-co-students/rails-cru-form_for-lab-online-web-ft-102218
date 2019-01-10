artist = Artist.create(name: "Led Zepplin", bio: "A artist's bio")
genre = Genre.create(name: "Classic Rock")
Song.create(name: "Stairway to Heaven", artist_id: artist.id, genre_id: genre.id)