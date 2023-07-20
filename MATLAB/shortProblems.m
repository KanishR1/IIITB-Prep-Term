%% Q1. Scalar variables
a = 10
b = 2.5 * 1e23
c = 2+3i
d = exp(i*(2*pi)/3)
%% Q2. Vector variables
aVec = [3.14 15 9 26]
bVec = aVec'
cVec = [5:-0.2:-5]
dVec = logspace(0,1,100)
%% Q3. Matrix variables
aMat = 2*ones(9)
bMat = diag(1:9)
%% Q4. Plot sin(t) , cos(t) for 1 time period, with time axis t from 0 to 2π. Label the legends and units on X & Y axis to make it a readable graph.

t = 0:pi/100:(2*pi)
plot(t,sin(t))
hold on
plot(t,cos(t))
legend("sin(t)","cos(t)")
xlabel("Angle in radians")
ylabel("Amplitude in Volts")