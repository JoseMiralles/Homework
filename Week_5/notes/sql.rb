travolta_busiest_years =  <<-SQL

    SELECT
        movies.yr,
        COUNT(*)
    FROM
        movies
    JOIN
        castings ON castings.movie_id = movies.id
    JOIN
        actors ON castings.actor_id = actors.id
    WHERE
        actors.name = 'John Travolta'
    GROUP BY
        movies.yr
    HAVING
        COUNT(*) >= 2

SQL