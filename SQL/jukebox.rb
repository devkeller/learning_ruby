require 'sqlite3'

db = SQLite3::Database.new('chinook.sqlite')

# 1. List all customers (name + email), ordered alphabetically (no extra information)
customers_query = """
  SELECT first_name, last_name, email
  FROM customers
  ORDER BY customers.last_name ASC
"""
customers = db.execute(customers_query)

customers_length_query = """
  SELECT COUNT(*)
  FROM customers
"""
length = db.execute(customers_length_query).flatten.first


# 2. List tracks (Name + Composer) of the Classical playlist

classical_playlist_query = """
  SELECT t.name, t.composer
  FROM tracks t
  JOIN playlist_tracks pt ON pt.track_id = t.id
  JOIN playlists p ON pt.playlist_id = p.id
  WHERE p.name = 'Classical'
"""

playlist_tracks = db.execute(classical_playlist_query)
p playlist_tracks


# 3. List the 10 artists mostly listed in all playlists
# 4. List the tracks which have been purchased at least twice, ordered by number of purchases
