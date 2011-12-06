
dat = rand(1,100);
figure
hDat = plot(dat)
hAx2 = gca;
hold on

ylim('auto')
a = [1;1];
a(:,2) = get(gca,'YLim');
hh = plot(a(:,1),a(:,2));
i = 1;
while i < 100
    i = i + 1;
    set(hh,'XData',[i i])
    pause(0.05)
    drawnow
    if i == 100
        delete(hDat)
        dat = rand(1,100);
        axes(hAx2)
        hDat = plot(dat);
        i = 1;
    end
    if 0%dat(i) > 0.92
        %% Send arm to state

        kChain = interp_arm(ceil(3*rand(1)),kChain)

        1
    end
end
