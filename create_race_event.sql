-- Step 1: Insert the new race name into racenamestbl
INSERT INTO racenamestbl (racename) 
VALUES ('The Manatee Mile');

-- Step 2: Check the new racenameid (run this to find it)
-- SELECT * FROM racenamestbl;

-- Assume the new racenameid is 6 (based on auto_increment value)

-- Step 3: Insert the race into racestbl
-- You'll need the foreign keys for race length and type (example IDs used below)
-- Replace 1 and 1 with your actual racelengthfk and racetypefk

INSERT INTO racestbl (raceracenamefk, racelengthfk, racetypefk)
VALUES (6, 1, 1);

-- Step 4: Check the new raceid (run this to find it)
-- SELECT * FROM racestbl ORDER BY raceid DESC;

-- Assume the new raceid is 10

-- Step 5: Insert the event for that race on October 31, 2026

INSERT INTO eventstbl (eventracefk, eventdate)
VALUES (10, '2026-10-31');

-- Step 6: Rename the race to something else

UPDATE racenamestbl
SET racename = 'The Riverfront Run'
WHERE racename = 'The Manatee Mile';
