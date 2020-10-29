## INT documentation (by Rich)

INT files are how PTR2 stores it's memory. They're used for every "scene" (other than, ironically, cutscenes) the game has.

INTs are split into sections, each holding LZSS compressed data. They have a specific header-like format that each folder uses to ensure nothing goes wrong.
This document will explain that header format and everything else about PTR2 INT files.

Each header starts with 0x11 0x22 0x33 0x44. We will call this the "magic value".
After the magic value, there is a list of 4-byte decimals it goes through. They are as follows:
- Amount of files,
- ID/which section to see it as (1 indexed),
  - 1 is tm0s/textures, 2 is sounds, 3 is props/misc, 4 is red hat, 5 is blue, 6 is pink, and 7 is yellow,
- Offset of the info portion + 4,
- Offset of the data itself,
- Size of the compressed data.
After these longs, there is 8 bytes of null data.

After the 8 null bytes, there is a list of offsets where the files are located in the data in 4-byte decimals, then possibly some null data.

Next off is the info portion, which is pointed to by the info portion offset value. These include offsets for the names relative from where the names start and sizes of the files in compressed form(?). They are ordered as name offset then size for each individual file.

After those are the names pointed by the name offsets. They are strings ended by a null (0x00) delimiter.

Finally, the data. First, you go to the data using the data offset. You then take the offset and size for each file and grab the compressed data and uncompress it using LZSS decompression to grab the file's data.