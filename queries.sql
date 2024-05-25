-- 1. Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano;

-- 3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4. Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- 5. Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao BETWEEN 100 AND 150
ORDER BY Duracao;

-- 7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(*) DESC;

-- 8. Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT A.PrimeiroNome, A.UltimoNome
FROM Atores A
WHERE A.Genero = 'M';

-- 9. Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT A.PrimeiroNome, A.UltimoNome
FROM Atores A
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome;

-- 10. Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;

-- 11. Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, EFA.PrimeiroNome, EFA.UltimoNome, EFA.Papel
FROM Filmes F
JOIN ElencoFilme EFA ON F.Id = EFA.IdFilme
JOIN Atores A ON EFA.IdAtor = A.Id;
