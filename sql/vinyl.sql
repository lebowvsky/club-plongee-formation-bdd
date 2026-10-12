CREATE TABLE vinyle (
    id          integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titre       varchar(200) NOT NULL,
    artiste     varchar(200) NOT NULL,
    annee       smallint,
    ref_catalogue varchar(30) UNIQUE
);

INSERT INTO vinyle (titre, artiste, annee, ref_catalogue) VALUES
    ('Ne me quitte pas', 'Jacques Brel', 1959, 'PHI 70.412'),
    ('L''Auvergnat',     'Georges Brassens', 1955, 'PHI 76.059'),
    ('Ne me quitte pas', 'Nina Simone', 1965, 'PHS 600-172');

SELECT id, titre, artiste, annee
FROM vinyle
WHERE annee < 1980
ORDER BY annee;

-- étape 4 : violation d'unicité
INSERT INTO vinyle (titre, artiste, ref_catalogue) VALUES ('Doublon', 'X', 'PHI 70.412');

-- étape 5 : structure de la table
\d vinyle