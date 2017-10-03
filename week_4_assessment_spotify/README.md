# Assessment

This is an open-book **checkpoint** assessment focusing on:
*building a simple SPOTIFY ruby app using ActiveRecord with SQL database.

# Purpose
At the end of this assessment, you should be able to:

1) Apply Gem ActiveRecord and Sqlite3 into ruby application

#### WITHOUT using SQL statement (refer Rakefile)
```
    2.1) Able to create SQL database
    2.2) Able to perform schema migration
    2.3) Able to explore sqlite3 database
    2.4) Able to CREATE, READ, UPDATE, DELETE (CRUD) data into SQL database
```
3) Able to rename files correctly (capitalization, camel case etc)

# Assessment Time
Maximum **5 hours 

# To start:
1) Fork this repo out by clicking the "**Fork**" button on the top right side of the GitHub page.

```
$ cd ~/Desktop
```

2) Git clone your own forked repo.

```
$ git clone <your repo address>
```

3) Navigate into the repo.
```
$ cd <repo-name>
```

4) Begin your test

Note:

Remember to commit small and often. Some good references:
```
 $ git add .
 $ git commit -m "Add song is done"
 $ git push origin master
```
Ask a mentor if you are stuck with git issues.

5) You should write your driver code inside "**playlist.rb**" file.
6) Once done, perform your last `git push origin master` to your repo.
7) Call a mentor and Slack him/her your GitHub repo link.
8) The mentor will assess your performance.


# App Requirements:

## 1) User is able to add new song into the playlist

```
$ ruby playlist.rb

What would you like to do? (just type the number)
1) List
2) Add A Song
3) Update A Song
4) Remove A Song
5) Quit

$ 2

What is the song title?
> Sugar

Who is the Artist?
> Maroon5

What is the Song Duration?
> 3:55

Type Y to continue adding songs, Type Q to quit
> Y

What is the song title?
> Too Good At Goodbyes

Who is the Artist?
> Sam Smith

What is the Song Duration?
> 3:21

Type Y to continue adding songs, Type Q to quit
> Q

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    Sugar                     Maroon5           3:21
2.    Too Good At Goodbyes      Sam Smith         3:55
```

## 2) User is able to list all the songs:

```
$ ruby playlist.rb
What would you like to do?
1) List
2) Add A Song
3) Update A Song
4) Remove A Song
5) Quit

$ 1

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    Sugar                     Maroon5           3:21
2.    Too Good At Goodbyes      Sam Smith         3:55

```

## 3) User is able to update the song details

Scenario 1: Song is found
```
$ ruby playlist.rb

What would you like to do?
1) List
2) Add A Song
3) Update A Song
4) Remove A Song
5) Quit

$ 3

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    Sugar                     Maroon5           3:21
2.    Too Good At Goodbyes      Sam Smith         3:55


Which song number do you want to update? 
> 1

The song title is "Sugar", by "Maroon5" and Song Duration is "7:00". 
What do you want to update? (type the number will do)
1) Song title
2) Artist
3) Song Duration 

> 1

What is the song title?
> sugarsugar

Do you want to continue updating the other details? (type Y if yes, type Q to quit back to song list)
> Y

What do you want to update? (type the number will do)
1) Song title
2) Artist
3) Song Duration 

> 2

What is the artist name?
> maroon 5

Do you want to continue updating the other details? (type y if yes, type Q to quit back to song list)
> Q

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    sugarsugar                maroon 5          3:21
2.    Too Good At Goodbyes      Sam Smith         3:55

```
Scenario 2: Song is not found

If the song is not found, a friendly error should be raised.
```
$ ruby playlist.rb

What would you like to do?
1) List
2) Add A Song
3) Update A Song
4) Remove A Song
5) Quit

$ 3

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    sugarsugar                maroon 5          3:21
2.    Too Good At Goodbyes      Sam Smith         3:55

Which song number do you want to update? 
> 3

Song number 3 is not found. Are you sure that this is the right song number?

```

## 4) User is able to remove any song from playlist

Scenario 1: Song is found

```
$ ruby playlist.rb

What would you like to do?
1) List
2) Add A Song
3) Update A Song
4) Remove A Song
5) Quit

$ 4

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    sugarsugar                maroon 5          3:21
2.    Too Good At Goodbyes      Sam Smith         3:55

Which song number would you like to delete?
> 1

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    Too Good At Goodbyes      Sam Smith         3:55

Do you want to continue deleting the other details? (type y if yes, type Q to quit back to song list)
>Y

Which song number would you like to delete?
> 2

Song number 2 is not found. Are you sure that this is the right song number?
Do you want to continue deleting the other details? (type y if yes, type Q to quit back to song list)
> Q

These are your songs:
No.   Title                     Artist            Duration
===   =====                     =====             =====
1.    Too Good At Goodbyes      Sam Smith         3:55

```

**IMPORTANT NOTE**:
```
Take note of the song number. 
Upon deletion, Song Number should be self-updated
in an ascending order.
Hmm, but changing the song's id inside your database is never a good idea.
How can you self-update the number without changing the song's id and display them?

```

# Good Luck!!!
