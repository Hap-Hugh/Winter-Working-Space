load('01_MorphableModel.mat');
load('model_info.mat');
trimIndex1 = [3*trimIndex-2, 3*trimIndex-1, 3*trimIndex]';
trimIndex1 = trimIndex1(:);

mu_shape = shapeMU(trimIndex1);
w = shapePC(trimIndex1, :);
sigma = shapeEV;

tex = texMU(trimIndex1);
tex = reshape(tex, 3, length(tex)/3);

segbin = segbin(trimIndex, :);

save('Model_Shape.mat', 'mu_shape', 'w', 'sigma', 'tex', 'tri', 'keypoints', 'symlist', 'symlist_tri', 'segbin', 'segbin_tri');


