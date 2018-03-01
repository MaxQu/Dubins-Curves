function path = dubins_wrapper(input)

path_raw = dubins(input.q0, input.q1, input.rho, input.stepSize);
path.x = path_raw(1,:);
path.y = path_raw(2,:);
path.theta = path_raw(3,:);

end