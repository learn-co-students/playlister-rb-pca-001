# Object Associations: Playlister

## Objectives

1. Implement three separate classes that relate to one another via belongs to, has many and through associations.
2. Practice writing instance and class methods.  


## Overview

This is your first introduction to the "Playlister" domain model. In this first iteration, we'll be building a class for `Song`, `Artist` and `Genre`. A song will will belong to an artist and an artist will have many songs. A song belongs to a genre and a genre belongs to a song. So, an Artist has many genres *through their songs*.


## Instructions

For the most part, this is a test-driven lab. Follow the test output to define you classes with the appropriate attributes. The guidelines below are meant to help you build the associations. Read them through first, then proceed through the test suite by running `rspec --fail-fast`. Refer back to these guidelines to help you pass tests related to associations. 

### Belongs To and Has Many Associations 

* `Artist`s should have many songs: 
  * Individual instances of the `Artist` class should be initialized with an empty `@songs` array. Create an `attr_accessor` for `songs` so that an artist can access their songs and add to them. 
  * Your `add_song` method will take in an argument of a song instance and push that song instance into the artist's `songs` array. 
* `Song`s should belong to an artist: 
  * The `Song` class needs an `attr_accessor` for `artist`.
  * At what point in time does a song become associated with an artist? In the real world, that happens when an artist writes a song. So, the `add_song` instance method on the `Artist` class should not only push a song into that artists `songs` array but set the song's `artist` attribute equal to the artist that you are operating on. 
* `Genre`s should have many songs.
  * The `Genre` class should have an `attr_accessor`, `songs`.
  * The `Genre` class should initialize with an empty array, `@songs`.
* An instance of `Song` should belong to a genre. At what point do a genre and a song get associated to one another? This decision is a little more flexible than our decision to associate artists and songs in an artist's `add_song` method. For the purposes of passing the tests, however, we'll say that a genre and a song become associated to one another **when a song's genre is set**. 
  * Write out the `.genre=(genre)` setter method in the song class explicity. In it, set the `@genre` variable equal equal to the genre that will be passed in as an argument. **Also in this method, push the song instance (i.e. `self`) into that genre's `.songs` array**. 
  * The `Song` class will also need an `attr_reader` for `genre`.

### Through Associations 

An artist has many genres through his or her songs and a genre has many artists through it's songs. 

* Write a `genres` instance method in the `Artist` class that iterates over that artist's songs and collects the genres of each song. 
* Write an `aritsts` instance method in the `Genre` class that iterates over that genre's songs and collects the artists of each song. 
* Make sure the `.genres` method returns a unique lists of genres (no duplicates!). The same goes for the `.artsits` method. 

## Note

When writing and calling the `#genre=(genre)` method for the `Song` class, keep in mind that the object being passed in is an entire Genre object, not a String representation of the Genre. For example, `#<Genre:0x007fbdca31ed88 @name="rap">`, not `'Rap'`. Similarly, when you call the `.add_song` method on an instance of `Artist`, the argument being passed in is *an instance of the `Song` class.

