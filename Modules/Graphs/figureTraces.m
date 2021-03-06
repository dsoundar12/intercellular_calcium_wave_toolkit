function hTraces = figureTraces(traces, timestep)
%% Lazy parameters
spacing = 3;

%% Make plot
stackedProfiles = stackProfiles(traces, spacing);
t = linspace(0, timestep*(size(traces,2)-1), size(traces,2));
hTraces = figure;
plot(t, stackedProfiles,'LineWidth',0.3,'Color','k')
axis([-inf,inf,-spacing/2,size(traces,1)*spacing])

%% Pretty up plot
set( gca, ...
    'FontName'          , 'Arial'               , ...
    'Box'               , 'on'                  , ...
    'TickDir'           , 'in'                  , ...
    'TickLength'        , [0.01 0.01]             , ...
    'ygrid'             , 'off'               	, ...
    'xcolor'            , 'k'                   , ...
    'ycolor'            , 'k'                   , ...
    'LineWidth'         , 0.5                   , ...
    'YTickLabel'        , []            , ...
    'XTickLabel'        , []            , ...
    'YTick'             , (0:spacing:(size(traces,1)-1)*spacing)  , ...
    'XTick'             , 0:20:60  , ...
    'FontSize'          , 12                    );
end

