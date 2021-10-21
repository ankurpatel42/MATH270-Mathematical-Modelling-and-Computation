clc;
clear;
set(0, 'DefaultFigureWindowStyle', 'docked');
%--------------------------------------------------------------------------
k1 = 6.8;
k2 = 0.175;
pmax = 300;
vref = 7;
c = 0.015;
n = 15;
h = 0.0001;
tol = 0.0001;
niter = 1000;
max_watts = 300;
m = 80;
g = 9.81;
theta = 10;
%---------------------------Question 1-------------------------------------
% p_rider = linspace(1, 1000, 100);
% p_motor_first_term = (1-exp(-(c)*(p_rider)));
% plot(p_rider, p_motor_first_term);
% 
% 
%v = linspace(0, 10, 1000);
% p_motor_second_term = 1 - (((v.^(n))./(v.^(n) + vref.^(n))));
%plot(v, p_motor_second_term);

%---------------------------Question 3-------------------------------------
% p_rider = 0.175.*v.^(3)+6.8.*v-50;
% plot(v, p_rider);

% p_rider = 50;
% measured_velocity = zeros(1, max_watts);
% power = zeros(1, max_watts);
%v0 = 0;
% for p_rider = 1:max_watts
%     f = @(v)(k1.*(v)+k2*(v).^(3)-p_rider);
%     v = newtonsMethod1D(f, v0, niter, h, tol);
%     measured_velocity(p_rider) = v;
%     power(p_rider) = p_rider;
%     v0 = v;
% end
% plot(power(:,1), measured_velocity(:,1));
% xlabel('P_{rider} (W)');
% ylabel('v (ms^-^1)');
% title('Velocity of bike against Power provided by rider pedaling');

%---------------------------Question 4-------------------------------------
% p_rider = 50;
% v = linspace(0, 10, 1000);
% p_motor_1 = (pmax*(1-exp(-c*p_rider))*(1-((v.^(n))./(v.^(n)+vref.^(n))))); %pmotor_1 = ...
% p_motor_2 = ((k1.*v)+(k2.*v.^(3))-p_rider); %pmotor_2 = ....
% plot(v, p_motor_1, 'r', v, p_motor_2, 'b');
% xlabel('v (ms^-^1)');
% ylabel('Power of motor (W)');
% plot(p_motor_1, v, 'r', p_motor_2, v, 'b');
% 
% Now set the two equations equal to 0
measured_velocity = zeros(1, max_watts);
power_rider = zeros(1, max_watts);
power_motor = zeros(1, max_watts);
x0 = [5;11];
for p_rider = 1:max_watts
    f1 = @(v,pmotor)(pmax*(1-exp(-c*p_rider))*(1-((v^(n))/(v^(n)+vref^(n))))-pmotor);
    f2 = @(v,pmotor)(k1*v+(k2*v^(3))-p_rider-pmotor);
    J = @(v,pmotor,h)(1/h).*[f1(v+h,pmotor)-f1(v,pmotor), f1(v,pmotor+h)-f1(v,pmotor);
                      f2(v+h,pmotor)-f2(v,pmotor), f2(v,pmotor+h)-f2(v,pmotor)];
    f = @(v,pmotor)[pmax*(1-exp(-c*p_rider))*(1-((v^(n))/(v^(n)+vref^(n))))-pmotor; 
        k1*v+(k2*v^(3))-p_rider-pmotor];
    x = newtonsMethod2D(f,J,x0,niter,h,tol);
    power_rider(p_rider) = p_rider;
    measured_velocity(p_rider) = x(1);
    power_motor(p_rider) = x(2);
end
% plot(power_rider(:,1), measured_velocity(:,1));
% xlabel('P_{rider} (W)');
% ylabel('v (ms^-^1)');
% title('Velocity of bike against Power provided by rider pedaling');

plot(power_rider, power_motor);
xlabel('P_{rider} (W)');
ylabel('P_{motor} (W)');
title('Power of motor against power of rider');
%--------------------------Question 6--------------------------------------
% p_rider = 0.175.*v.^(3)+6.8.*v-50;
% plot(v, p_rider);

% measured_velocity = zeros(1, max_watts);
% power = zeros(1, max_watts);
% v0 = 0;
% for p_rider = 1:max_watts
%     f = @(v)((k1.*(v))+(k2*(v).^(3))+((m*g*sin(theta)).*(v))-p_rider);
%     v = newtonsMethod1D(f, v0, niter, h, tol);
%     measured_velocity(p_rider) = v;
%     power(p_rider) = p_rider;
%     v0 = v;
% end
% plot(power(:,1), measured_velocity(:,1));
% xlabel('P_{rider} (W)');
% ylabel('v (ms^-^1)');
% title('Velocity of bike against Power provided by rider pedaling');

%

% measured_velocity = zeros(1, max_watts);
% power_rider = zeros(1, max_watts);
% power_motor = zeros(1, max_watts);
% x0 = [5;11];
% for p_rider = 1:max_watts
%     f1 = @(v,pmotor)(pmax*(1-exp(-c*p_rider))*(1-((v^(n))/(v^(n)+vref^(n))))-pmotor);
%     f2 = @(v,pmotor)((k1.*(v))+(k2*(v).^(3))+((m*g*sin(theta)).*(v))-p_rider-pmotor);
%     J = @(v,pmotor,h)(1/h).*[f1(v+h,pmotor)-f1(v,pmotor), f1(v,pmotor+h)-f1(v,pmotor);
%                       f2(v+h,pmotor)-f2(v,pmotor), f2(v,pmotor+h)-f2(v,pmotor)];
%     f = @(v,pmotor)[pmax*(1-exp(-c*p_rider))*(1-((v^(n))/(v^(n)+vref^(n))))-pmotor; 
%         k1.*(v)+(k2*(v).^(3))+((m*g*sin(theta)).*(v))-p_rider-pmotor];
%     x = newtonsMethod2D(f,J,x0,niter,h,tol);
%     power_rider(p_rider) = p_rider;
%     measured_velocity(p_rider) = x(1)*-1;
%     power_motor(p_rider) = x(2);
% end
% plot(power_rider, measured_velocity);
% xlabel('P_{rider} (W)');
% ylabel('v (ms^-^1)');
% title('Velocity of bike against Power provided by rider pedaling');
% 
% plot(power_rider, power_motor);
% xlabel('P_{rider} (W)');
% ylabel('P_{motor} (W)');
% title('Power of motor against power of rider');
