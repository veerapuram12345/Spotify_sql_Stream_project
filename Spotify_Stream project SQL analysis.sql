create database spotify;
use spotify;
select * from spotify_stream;

-- use datediff and curdate () to find out the difference between dates 
select track,datediff(curdate(),str_to_date(Release_Date,'%Y-%m-%d'))
from spotify_stream;

-- use the round function to change the whole score 
select round(track_score) from spotify_stream;
-- Show the album name and artist  
select Album_name,Artist
from spotify_stream;

-- Show the track and ISRC
select Track,ISRC
from spotify_stream;

-- Show the artist and track score between 400 and 700
select Artist,Track_Score
from spotify_stream
where track_score between 400 and 700;

