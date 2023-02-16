SELECT Nome, Ano FROM [dbo].[Filmes]

SELECT Nome, Ano FROM [dbo].[Filmes] 
ORDER BY Ano asc

SELECT Nome, Ano, Duracao FROM [dbo].[Filmes]
WHERE Nome like 'De volta para o futuro'

SELECT Nome, Ano, Duracao FROM [dbo].[Filmes]
WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM [dbo].[Filmes]
WHERE Duracao >= 100 AND Duracao <= 150
ORDER BY Duracao asc


SELECT * FROM [dbo].[Atores]
WHERE Genero = 'M'

SELECT * FROM [dbo].[Atores]
WHERE Genero = 'F'
ORDER BY PrimeiroNome asc

SELECT a.Nome, c.Genero FROM [dbo].[Filmes] a
INNER JOIN [dbo].[FilmesGenero] b ON a.Id = b.IdFilme
INNER JOIN [dbo].[Generos] c on b.IdGenero = c.Id

SELECT a.Nome, c.Genero FROM [dbo].[Filmes] a
INNER JOIN [dbo].[FilmesGenero] b ON a.Id = b.IdFilme
INNER JOIN [dbo].[Generos] c on b.IdGenero = c.Id
where c.Genero like 'Mistério'

SELECT a.Nome, c.PrimeiroNome, c.UltimoNome, b.Papel from [dbo].[Filmes] a
inner join [dbo].[ElencoFilme] b on a.Id = b.IdFilme
inner join [dbo].[Atores] c on b.IdAtor = c.Id


