datafile = LOAD '/home/acadgild/workspace/mywork/Session8/WordCountData.txt' as (line:chararray);
Words = FOREACH datafile GENERATE FLATTEN(TOKENIZE(line,' ')) as word;
Grouped = GROUP Words BY word;
wordCount = FOREACH Grouped GENERATE group, COUNT(Words);
dump wordCount;
