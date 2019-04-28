function analysiss = analysis(data, region)
    temp = '000';
    if strcmp(region, 'west')
        stlist = ["WA","OR","CA","NV","UT","ID","MT","WY","CO","NM","AZ","AK","HI"];
        analysiss = struct;
        for j = length(stlist):-1:1
            analysiss(j).sum = [0,0,0];
            analysiss(j).count = 0;
        end

        for i = 1:length(data)
            for j = 1:length(stlist)
                if data(i).state == stlist(j)
                    analysiss(j).sum = analysiss(j).sum + [data(i).avgcovered,data(i).avgtotpay,data(i).avgmedpay];
                    analysiss(j).count = analysiss(j).count + 1;
                    analysiss(j).name = data(i).state;
                end
            end
        end
   
        for j = length(stlist):-1:1
            analysiss(j).avg = analysiss(j).sum/(analysiss(j).count-1);
        end
    elseif strcmp(region, 'midwest')
        stlist = ["ND","SD","NE","KS","MO","IA","MN","WI","IL","IN","MI","OH"];
        analysiss = struct;
        for j = length(stlist):-1:1
            analysiss(j).sum = [0,0,0];
            analysiss(j).count = 0;
        end
    
        for i = 1:length(data)
            for j = 1:length(stlist)
                if data(i).state == stlist(j)
                    analysiss(j).sum = analysiss(j).sum + [data(i).avgcovered,data(i).avgtotpay,data(i).avgmedpay];
                    analysiss(j).count = analysiss(j).count + 1;
                    analysiss(j).name = data(i).state;
                end
            end
        end
   
        for j = length(stlist):-1:1
            analysiss(j).avg = analysiss(j).sum/(analysiss(j).count-1);
        end
    elseif strcmp(region, 'south')
        stlist = ["TX","OK","AR","LA","MS","AL","GA","SC","NB","VA","WV","KY","TN","FL","DE","MD","DC"];
        analysiss = struct;
        for j = length(stlist):-1:1
            analysiss(j).sum = [0,0,0];
            analysiss(j).count = 0;
        end
    
        for i = 1:length(data)
            for j = 1:length(stlist)
                if data(i).state == stlist(j)
                    analysiss(j).sum = analysiss(j).sum + [data(i).avgcovered,data(i).avgtotpay,data(i).avgmedpay];
                    analysiss(j).count = analysiss(j).count + 1;
                    analysiss(j).name = data(i).state;
                end
            end
        end
   
        for j = length(stlist):-1:1
            analysiss(j).avg = analysiss(j).sum/(analysiss(j).count-1);
        end
    elseif strcmp(region, 'northeast')
        stlist = ["ME","MA","NH","RI","CT","NJ","PA","VT","NY"];
        analysiss = struct;
        for j = length(stlist):-1:1
            analysiss(j).sum = [0,0,0];
            analysiss(j).count = 0;
            analysiss(j).tcount = 0;
        end
    
        for i = 1:length(data)
            for j = 1:length(stlist)
                if data(i).state == stlist(j)
                    analysiss(j).sum = analysiss(j).sum + [data(i).avgcovered,data(i).avgtotpay,data(i).avgmedpay];
                    analysiss(j).count = analysiss(j).count + 1;
                    analysiss(j).name = data(i).state;
                    if ~strcmp(data(i).drg(1:3),temp)
                        temp = data(i).drg(1:3);
                        analysiss(j).tcount = analysiss(j).tcount + 1;
                    end
                end
                temp = '000';
            end
        end
   
        for j = length(stlist):-1:1
            analysiss(j).avg = analysiss(j).sum/(analysiss(j).count-1);
        end
        
        
    end
    
    
    
    
 
end