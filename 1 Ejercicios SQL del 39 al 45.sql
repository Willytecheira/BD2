SELECT * FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language LIKE 'Dutch';
SELECT * FROM city INNER JOIN countrylanguage ON city.CountryCode = countrylanguage.CountryCode WHERE countrylanguage.Language LIKE 'Dutch';
SELECT * FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language LIKE 'Spanish' AND countrylanguage.IsOfficial LIKE 'T';
SELECT * FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language LIKE 'Spanish' AND countrylanguage.Percentage > 96.00;
SELECT * FROM country INNER JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.CountryCode LIKE 'BRA' AND country.Population > 1000000;
SELECT  country.name, country.Continent, country.Region, country.Population,
        city.Name, city.District, city.Population,
        countrylanguage.Language
FROM country, city, countrylanguage WHERE country.continent LIKE 'Europe';
SELECT  country.name, country.Continent, country.Region, country.Population,
        city.Name, city.District, city.Population,
        countrylanguage.Language
FROM country, city, countrylanguage WHERE country.continent LIKE 'Europe' AND countrylanguage.IsOfficial = 'T';
