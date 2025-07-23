# Spotify_sql_Stream_project
Spotify_Stream project contains dataset and few questions which is analysed using sql
I recently worked on a Spotify streaming dataset containing columns like Track, Album Name, Artist, Release Date, ISRC, and Track Score. Using SQL, I conducted an analysis to explore various insights from the data.

One of the key steps involved using the DATEDIFF function in combination with CURDATE() to calculate the difference between release dates and the current date. This allowed me to track how old specific albums or tracks are. Additionally, I applied the ROUND function to standardize the track scores by rounding them to whole numbers, which simplified the data for better interpretation.

Another interesting part of the analysis involved showcasing specific attributes like album names alongside their respective artists and displaying the tracks with their ISRC codes. This provided an insightful overview of the data while retaining key identifiers for each track.

To dive deeper, I analyzed track scores that fell between 400 and 700, focusing on the relationship between Track Score and release dates. By utilizing the STR_TO_DATE function, I converted string-formatted dates to proper date formats, allowing me to apply the DATEDIFF function accurately.

You can check out the detailed analysis and results on my GitHub, where I’ve showcased all the SQL queries and their outputs. This project helped refine my SQL skills and offered valuable insights into music streaming data. Feel free to check it out!

create database spotify; use spotify; select * from spotify_stream;

-- use datediff and curdate () to find out the difference between dates select track,datediff(curdate(),str_to_date(Release_Date,'%Y-%m-%d')) from spotify_stream;

-- use the round function to change the whole score select round(track_score) from spotify_stream; -- Show the album name and artist
select Album_name,Artist from spotify_stream;

-- Show the track and ISRC select Track,ISRC from spotify_stream;

-- Show the artist and track score between 400 and 700 select Artist,Track_Score from spotify_stream where track_score between 400 and 700;
