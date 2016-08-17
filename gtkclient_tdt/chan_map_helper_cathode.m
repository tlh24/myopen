% chan map helper (cathode)

ch(01).Cathode = 10;
ch(02).Cathode = 22;
ch(03).Cathode = 24;
ch(04).Cathode = 26;
ch(05).Cathode = 28;
ch(06).Cathode = 30;
ch(07).Cathode = 34;
ch(08).Cathode = 36;
ch(09).Cathode = 32;
ch(10).Cathode = 42;
ch(11).Cathode = 46;
ch(12).Cathode = 25;
ch(13).Cathode = 35;
ch(14).Cathode = 39;
ch(15).Cathode = 41;
ch(16).Cathode = 29;

chanmap = nan(1,96);

for i=1:length(ch)
    for j=ch(i).Cathode
        chanmap(j) = i;
    end
end

possible_chans = 17:96;
j=1;
for i=1:length(chanmap)
    if isnan(chanmap(i))
        chanmap(i) = possible_chans(j);
        j=j+1;
    end
end

chanmap'