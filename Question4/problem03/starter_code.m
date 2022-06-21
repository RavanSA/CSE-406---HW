% Plot profiles
load pressure_displacement_profiles
sym C_p

fig1 = figure; % new figure
inCP = plot(initial.x,-initial.cp,'b-');
set(inCP,'linewidth',2);
title('Without fixPSlinestyle')

hold on

inDP = plot(initial.x,-0.9+initial.disp*4,'g-');
set(inDP,'linewidth',2);

hold on

opCP = plot(optimal.x, -optimal.cp,'b:');
set(opCP,'linewidth',2);

hold on

opDP = plot(optimal.x, -0.9+optimal.disp*4,'g:');
set(opDP,'linewidth',2);

leg = legend('Initial (C_p)','Initial (Shape)','Optimal (C_p)','Optimal (Shape)');
set(leg,...
    'Position',[0.16 0.40 0.24 0.164],...
    'Orientation','vertical',...
    'LineWidth',1);

yyaxis left
ylabel('C_p')
yticks([-1.2 -1 -0.8 -0.6 -0.4 -0.2 0 0.2 0.4 0.6 0.8 1]);

yyaxis right
ylabel('Distance transverse to airfoil')
set(gca,'YTickLabel',-0.2:0.1:0.8)

xlabel('Distance along airfoil')

hold off

print(gcf,'-depsc2','Hwk1Prob3_starter1.eps')
fixPSlinestyle('Hwk1Prob3_starter1.eps','fixed_Hwk1Prob3_starter1.eps')




