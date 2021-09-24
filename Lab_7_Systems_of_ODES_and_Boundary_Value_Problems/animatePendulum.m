function animatePendulum(Theta)
% Function to plot animations of a swinging pendulum
% OUTPUTS: none
% INPUTS: Theta - a vector or angles of pendulum (Theta=0
%         corresponds to vertically downward) at equally spaced time points

nFrames = length(Theta);

figure
for iFrame = 1:nFrames
   x = [0, sin(Theta(iFrame))];
   y = [0, -cos(Theta(iFrame))];
   plot(x, y, x(2), y(2), 'o')
   xlim([-1, 1])
   ylim([-1, 1])
   axis square
   drawnow
end