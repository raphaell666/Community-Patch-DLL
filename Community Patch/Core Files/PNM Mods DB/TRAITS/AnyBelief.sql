ALTER TABLE Traits ADD AnyBelief BOOLEAN DEFAULT 0;
ALTER TABLE Traits ADD AlwaysReligion BOOLEAN DEFAULT 0;

INSERT INTO CustomModDbUpdates(Name, Value) VALUES('TRAITS_ANY_BELIEF', 1);
