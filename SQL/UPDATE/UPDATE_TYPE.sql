/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Update type descriptions
-- Descriptions from wikipedia

UPDATE TYPE SET DESCRIPTION =
    'Parrots, also known as psittacines, are birds of the roughly 393 species ' ||
    'in 92 genera that make up the order Psittaciformes, found in most tropical ' ||
    'and subtropical regions. The order is subdivided into three superfamilies: ' ||
    'the Psittacoidea, the Cacatuoidea, and the Strigopoidea.'
WHERE NAME = 'Parrot';

UPDATE TYPE SET DESCRIPTION =
    'Turtles are diapsids of the order Testudines characterized by a special ' ||
    'bony or cartilaginous shell developed from their ribs and acting as a shield. ' ||
    '"Turtle" may refer to the order as a whole or to fresh-water and sea-dwelling ' ||
    'testudines. The order Testudines includes both extant and extinct species.'
WHERE ID = 7;