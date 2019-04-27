function analysis = analwest(data)
    stlist = ["WA","OR","CA","NV","UT","ID","MT","WY","CO","NM","AZ","AK","HI"];
    analysis = struct;
    for j = length(stlist):-1:1
        analysis(j).sum = [0,0,0];
        analysis(j).count = 0;
    end
    
   for i = 1:length(data)
       for j = 1:length(stlist)
        if data(i).state == stlist(j)
            analysis(j).sum = analysis(j).sum + [data(i).avgcovered,data(i).avgtotpay,data(i).avgmedpay];
            analysis(j).count = analysis(j).count + 1;
            analysis(j).name = data(i).state;
        end
       end
   end
   
   for j = length(stlist):-1:1
        analysis(j).avg = analysis(j).sum/(analysis(j).count-1);
    end
end