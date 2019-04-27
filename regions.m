function [west, midwest, northeast, south] = regions(data)
    w = 'WA,OR,CA,NV,UT,ID,MT,WY,CO,NM,AZ,AK,HI';
    mw = 'ND,SD,NE,KS,MO,IA,MN,WI,IL,IN,MI,OH';
    s = 'TX,OK,AR,LA,MS,AL,GA,SC,NB,VA,WV,KY,TN,FL,DE,MD,DC';
    ne = 'ME,MA,NH,RI,CT,NJ,PA,VT,NY';
    west = [];
    midwest = [];
    northeast = [];
    south = [];
    countw = 1;
    counts = 1;
    countne = 1;
    countmw = 1;
    for i = 1:1:length(data)
        if 1 == contains(w,data(i).state)
            west(countw) = i;
            countw = countw + 1;
        elseif 1 == contains(mw,data(i).state)
            midwest(countmw) = i;
            countmw = countmw + 1;
        elseif 1 == contains(s,data(i).state)
            south(counts) = i;
            counts = counts + 1;
        elseif 1 == contains(ne,data(i).state)
            northeast(countne) = i;
            countne = countne + 1;
        end
    end
end
    




