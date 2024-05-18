-- 1
select Nome,Ano from Filmes

-- 2
select Nome, Ano, Duracao from Filmes order by Ano

-- 3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

-- 4
select Nome, Ano, Duracao from Filmes where Ano = 1997

-- 5
select Nome, Ano, Duracao from Filmes where Ano > 2000

-- 6
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

-- 7
select Ano, COUNT(Ano) Quantidade from Filmes group by Ano order by Quantidade desc

-- 8
select Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero from Atores where Genero = 'M'

-- 9
select Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero from Atores where Genero = 'F' order by Atores.PrimeiroNome

-- 10
select Filmes.Nome, Generos.Genero 
from Filmes 
JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme 
JOIN Generos on Generos.Id = FilmesGenero.IdGenero

-- 11
select Filmes.Nome, Generos.Genero 
from Filmes
JOIN FilmesGenero on Filmes.Id = FilmesGenero.IdFilme 
JOIN Generos on Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério'

-- 12
select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from Filmes
JOIN ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
JOIN Atores on Atores.Id = ElencoFilme.IdAtor
