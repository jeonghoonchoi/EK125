function creategraph(state, val, set, region)
    y = val;
	bar(y);
    tit = sprintf('%s %s Bar Plot', region, set);
    title(tit);
	xticklabels(state);
    xlabel('State');
    ylabel('Value');
    grid on;
end