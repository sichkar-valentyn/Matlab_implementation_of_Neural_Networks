% File: NN_Matrices.m
% Description: Matlab code of Neural Networks Results for Control System of five ultrasonic sensors
% Environment: Matlab
%
% MIT License
% Copyright (c) 2017 Valentyn N Sichkar
% github.com/sichkar-valentyn

close all;

%Creating an Input vector
Inputs = [10 10 10 10 10 1]; 

% -------------- Separate ----------------

%Creating a matrix of weights for the Layer #1
Weights_First_Layer_Separate = [0.11 -0.05 0 0 0 0 0 0 0 0 0.5 -0.11 0 0 0 0 0 0 0 0
    0 0 0.11 -0.05 0 0 0 0 0 0 0 0 0.5 -0.11 0 0 0 0 0 0
    0 0 0 0 0.11 -0.05 0 0 0 0 0 0 0 0 0.5 -0.11 0 0 0 0
    0 0 0 0 0 0 0.11 -0.05 0 0 0 0 0 0 0 0 0.5 -0.11 0 0
    0 0 0 0 0 0 0 0 0.11 -0.05 0 0 0 0 0 0 0 0 0.5 -0.11
    -1 1.05 -1 1.05 -1 1.05 -1 1.05 -1 1.05 -1 1.05 -1 1.05 -1 1.05 -1 1.05 -1 1.05];

%Getting the outputs of the Layer #1
A_Separate = Inputs * Weights_First_Layer_Separate;

%Adding to the outputs of the Layer #1 the second bias
B_Separate = [A_Separate 1];

%Activating the neurons in the Layer #1
for i = 1:1:21
    if B_Separate(i)<0; B_Separate(i)=0;
    end
    if B_Separate(i)>0; B_Separate(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer
Weights_Hidden_Layer_Separate = [1 0 0 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 0 0 1
    -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5];

%Getting the outputs of the Hidden Layer
D_Separate = B_Separate * Weights_Hidden_Layer_Separate;

%Adding to the outputs of the Hidden Layer the third bias
H_Separate = [D_Separate 1];

%Activating the neurons in the Hidden Layer
for i = 1:1:11
    if H_Separate(i)<0; H_Separate(i)=0;
    end
    if H_Separate(i)>0; H_Separate(i)=1;
    end
end

%Creating a matrix of weights for the Output Layer
Weights_Output_Layer_Separate = [1 0
    1 0
    1 0
    1 0
    1 0
    0 1
    0 1
    0 1
    0 1
    0 1
    -0.5 -0.5];

%Getting the outputs of the Hidden Layer
Result_Separate = H_Separate * Weights_Output_Layer_Separate;

%Activating the neurons in the Output Layer
Final_Result_Separate = Result_Separate;
for i = 1:1:2
    if Result_Separate(i)<0; Final_Result_Separate(i)=0;
    end
    if Result_Separate(i)>0; Final_Result_Separate(i)=1;
    end
end

% -------------- Pairs ----------------

%Creating a matrix of weights for the Layer #1
Weights_First_Layer_1_Pairs = [0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0.0476 -0.0285 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0.1 -0.0666 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0.0476 -0.0285 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0.1 -0.0666 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0.0476 -0.0285 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0.1 -0.0666 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666
    -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06];

%Getting the outputs of the Layer #1
A_Pairs = Inputs * Weights_First_Layer_1_Pairs;

%Adding to the outputs of the Layer #1 the second bias
B_Pairs = [A_Pairs 1];

%Activating the neurons in the Layer #1
for i = 1:1:33
    if B_Pairs(i)<0; B_Pairs(i)=0;
    end
    if B_Pairs(i)>0; B_Pairs(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #1
Weights_Hidden_Layer_Pairs = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5];

%Getting the outputs of the Hidden Layer #1
D_Pairs = B_Pairs * Weights_Hidden_Layer_Pairs;

%Adding to the outputs of the Hidden Layer #1 the third bias
H_Pairs = [D_Pairs 1];

%Activating the neurons in the Hidden Layer #1
for i = 1:1:17
    if H_Pairs(i)<0; H_Pairs(i)=0;
    end
    if H_Pairs(i)>0; H_Pairs(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #2
Weights_Hidden_Layer_2_Pairs = [1 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0
    0 1 0 0 0 0 0 0
    0 0 1 0 0 0 0 0
    0 0 1 0 0 0 0 0
    0 0 0 1 0 0 0 0
    0 0 0 1 0 0 0 0
    0 0 0 0 1 0 0 0
    0 0 0 0 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 1 0
    0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 1
    -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5];

%Getting the outputs of the Hidden Layer #2
S_Pairs = H_Pairs * Weights_Hidden_Layer_2_Pairs;

%Adding to the outputs of the Hidden Layer #2 the fourth bias
P_Pairs = [S_Pairs 1];

%Activating the neurons in the Hidden Layer #2
for i = 1:1:9
    if P_Pairs(i)<0; P_Pairs(i)=0;
    end
    if P_Pairs(i)>0; P_Pairs(i)=1;
    end
end

%Creating a matrix of weights for the Output Layer
Weights_Output_Layer_Pairs = [1 0
    1 0
    1 0
    1 0
    0 1
    0 1
    0 1
    0 1
    -0.5 -0.5];

%Getting the inputs of the Output Layer
Result_Pairs = P_Pairs * Weights_Output_Layer_Pairs;

%Activating the neurons in the Output Layer
Final_Result_Pairs = Result_Pairs;
for i = 1:1:2
    if Result_Pairs(i)<0; Final_Result_Pairs(i)=0;
    end
    if Result_Pairs(i)>0; Final_Result_Pairs(i)=1;
    end
end

% -------------- Tripples ----------------

%Creating a matrix of weights for the Layer #1
Weights_First_Layer_1_Tripples = [0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0 0 0 0 0 0 0
    0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0 0 0 0 0
    0 0 0 0 0.0476 -0.0285 0.0476 -0.0285 0 0 0 0 0 0 0 0 0.1 -0.0666 0.1 -0.0666 0 0 0 0
    0 0 0 0 0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0
    0 0 0 0 0 0 0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0 0 0.1 -0.0666
    -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06];

%Getting the outputs of the Layer #1
A_Tripples = Inputs * Weights_First_Layer_1_Tripples;

%Adding to the outputs of the Layer #1 the second bias
B_Tripples = [A_Tripples 1];

%Activating the neurons in the Layer #1
for i = 1:1:25
    if B_Tripples(i)<0; B_Tripples(i)=0;
    end
    if B_Tripples(i)>0; B_Tripples(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #1
Weights_Hidden_Layer_Tripples = [1 0 0 0 0 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0 0 0 
    0 0 0 0 0 1 0 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0 0 0
    0 0 0 0 0 0 1 0 0 0 0 0
    0 0 0 0 0 0 1 0 0 0 0 0
    0 0 0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 0 0 0 0 1
    -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5];

%Getting the outputs of the Hidden Layer #1
D_Tripples = B_Tripples * Weights_Hidden_Layer_Tripples;

%Adding to the outputs of the Hidden Layer #1 the third bias
H_Tripples = [D_Tripples 1];

%Activating the neurons in the Hidden Layer #1
for i = 1:1:13
    if H_Tripples(i)<0; H_Tripples(i)=0;
    end
    if H_Tripples(i)>0; H_Tripples(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #2
Weights_Hidden_Layer_2_Tripples = [1 0 0 0
    1 0 0 0
    1 0 0 0
    0 1 0 0
    0 1 0 0
    0 1 0 0
    0 0 1 0
    0 0 1 0
    0 0 1 0
    0 0 0 1
    0 0 0 1
    0 0 0 1
    -2.5 -2.5 -2.5 -2.5];

%Getting the outputs of the Hidden Layer #2
S_Tripples = H_Tripples * Weights_Hidden_Layer_2_Tripples;

%Adding to the outputs of the Hidden Layer #2 the fourth bias
P_Tripples = [S_Tripples 1];

%Activating the neurons in the Hidden Layer #2
for i = 1:1:5
    if P_Tripples(i)<0; P_Tripples(i)=0;
    end
    if P_Tripples(i)>0; P_Tripples(i)=1;
    end
end

%Creating a matrix of weights for the Output Layer
Weights_Output_Layer_Tripples = [1 0
    1 0
    0 1
    0 1
    -0.5 -0.5];

%Getting the inputs of the Output Layer
Result_Tripples = P_Tripples * Weights_Output_Layer_Tripples;

%Activating the neurons in the Output Layer
Final_Result_Tripples = Result_Tripples;
for i = 1:1:2
    if Result_Tripples(i)<0; Final_Result_Tripples(i)=0;
    end
    if Result_Tripples(i)>0; Final_Result_Tripples(i)=1;
    end
end

% -------------- Quad ----------------

%Creating a matrix of weights for the Layer #1
Weights_First_Layer_1_Quad = [0.0476 -0.0285 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0 0 0
    0 0 0.0476 -0.0285 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0
    0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0.1 -0.0666 0 0
    0 0 0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0.1 -0.0666
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06];

%Getting the outputs of the Layer #1
A_Quad = Inputs * Weights_First_Layer_1_Quad;

%Adding to the outputs of the Layer #1 the second bias
B_Quad = [A_Quad 1];

%Activating the neurons in the Layer #1
for i = 1:1:17
    if B_Quad(i)<0; B_Quad(i)=0;
    end
    if B_Quad(i)>0; B_Quad(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #1
Weights_Hidden_Layer_Quad = [1 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0
    0 1 0 0 0 0 0 0
    0 0 1 0 0 0 0 0
    0 0 1 0 0 0 0 0
    0 0 0 1 0 0 0 0
    0 0 0 1 0 0 0 0
    0 0 0 0 1 0 0 0
    0 0 0 0 1 0 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 1 0 0
    0 0 0 0 0 0 1 0
    0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 1
    -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5];

%Getting the outputs of the Hidden Layer #1
D_Quad = B_Quad * Weights_Hidden_Layer_Quad;

%Adding to the outputs of the Hidden Layer #1 the third bias
H_Quad = [D_Quad 1];

%Activating the neurons in the Hidden Layer #1
for i = 1:1:9
    if H_Quad(i)<0; H_Quad(i)=0;
    end
    if H_Quad(i)>0; H_Quad(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #2
Weights_Hidden_Layer_2_Quad = [1 0
    1 0
    1 0
    1 0
    0 1
    0 1
    0 1
    0 1
    -3.5 -3.5];

%Getting the outputs of the Hidden Layer #2
S_Quad = H_Quad * Weights_Hidden_Layer_2_Quad;

%Adding to the outputs of the Hidden Layer #2 the fourth bias
P_Quad = [S_Quad 1];

%Activating the neurons in the Hidden Layer #2
for i = 1:1:3
    if P_Quad(i)<0; P_Quad(i)=0;
    end
    if P_Quad(i)>0; P_Quad(i)=1;
    end
end

%Creating a matrix of weights for the Output Layer
Weights_Output_Layer_Quad = [1 0
    0 1
    -0.5 -0.5];

%Getting the inputs of the Output Layer
Result_Quad = P_Quad * Weights_Output_Layer_Quad;

%Activating the neurons in the Output Layer
Final_Result_Quad = Result_Quad;
for i = 1:1:2
    if Result_Quad(i)<0; Final_Result_Quad(i)=0;
    end
    if Result_Quad(i)>0; Final_Result_Quad(i)=1;
    end
end

% -------------- Five ----------------

%Creating a matrix of weights for the Layer #1
Weights_First_Layer_1_Five = [0.0476 -0.0285 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0 0 0 0 0
    0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0 0 0
    0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0 0 0
    0 0 0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0.1 -0.0666 0 0
    0 0 0 0 0 0 0 0 0.0476 -0.0285 0 0 0 0 0 0 0 0 0.1 -0.0666
    -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.96 1.02 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06 -0.91 1.06];

%Getting the outputs of the Layer #1
A_Five = Inputs * Weights_First_Layer_1_Five;

%Adding to the outputs of the Layer #1 the second bias
B_Five = [A_Five 1];

%Activating the neurons in the Layer #1
for i = 1:1:21
    if B_Five(i)<0; B_Five(i)=0;
    end
    if B_Five(i)>0; B_Five(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #1
Weights_Hidden_Layer_Five = [1 0 0 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0
    0 1 0 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0
    0 0 1 0 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0
    0 0 0 1 0 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0
    0 0 0 0 1 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 1 0 0 0 0
    0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 1 0 0 0
    0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 1 0 0
    0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 1 0
    0 0 0 0 0 0 0 0 0 1
    0 0 0 0 0 0 0 0 0 1
    -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5 -1.5];

%Getting the outputs of the Hidden Layer #1
D_Five = B_Five * Weights_Hidden_Layer_Five;

%Adding to the outputs of the Hidden Layer #1 the third bias
H_Five = [D_Five 1];

%Activating the neurons in the Hidden Layer #1
for i = 1:1:11
    if H_Five(i)<0; H_Five(i)=0;
    end
    if H_Five(i)>0; H_Five(i)=1;
    end
end

%Creating a matrix of weights for the inputs of the Hidden Layer #2
Weights_Hidden_Layer_2_Five = [1 0
    1 0
    1 0
    1 0
    1 0
    0 1
    0 1
    0 1
    0 1
    0 1
    -4.5 -4.5];

%Getting the outputs of the Hidden Layer #2
S_Five = H_Five * Weights_Hidden_Layer_2_Five;

%Adding to the outputs of the Hidden Layer #2 the fourth bias
P_Five = [S_Five 1];

%Activating the neurons in the Hidden Layer #2
for i = 1:1:3
    if P_Five(i)<0; P_Five(i)=0;
    end
    if P_Five(i)>0; P_Five(i)=1;
    end
end

%Creating a matrix of weights for the Output Layer
Weights_Output_Layer_Five = [1 0
    0 1
    -0.5 -0.5];

%Getting the inputs of the Output Layer
Result_Five = P_Five * Weights_Output_Layer_Five;

%Activating the neurons in the Output Layer
Final_Result_Five = Result_Five;
for i = 1:1:2
    if Result_Five(i)<0; Final_Result_Five(i)=0;
    end
    if Result_Five(i)>0; Final_Result_Five(i)=1;
    end
end


figure(1);
subplot(5,2,[1,3,5,7,9]), bar(Inputs), title('Inputs');
subplot(5,2,2), if Final_Result_Separate(2)==1; bar(Final_Result_Separate,'r'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Separate(1)==1; bar(Final_Result_Separate,'y'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Separate(1)==0; if Final_Result_Separate(2)==0; bar(1,'g'); set(gca,'xticklabel',{' '}); end, end, title('Separate');
subplot(5,2,4), if Final_Result_Pairs(2)==1; bar(Final_Result_Pairs,'r'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Pairs(1)==1; bar(Final_Result_Pairs,'y'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Pairs(1)==0; if Final_Result_Pairs(2)==0; bar(1,'g'); set(gca,'xticklabel',{' '}); end, end, title('Pairs');
subplot(5,2,6), if Final_Result_Tripples(2)==1; bar(Final_Result_Tripples,'r'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Tripples(1)==1; bar(Final_Result_Tripples,'y'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Tripples(1)==0; if Final_Result_Tripples(2)==0; bar(1,'g'); set(gca,'xticklabel',{' '}); end, end, title('Tripples');
subplot(5,2,8), if Final_Result_Quad(2)==1; bar(Final_Result_Quad,'r'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Quad(1)==1; bar(Final_Result_Quad,'y'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Quad(1)==0; if Final_Result_Quad(2)==0; bar(1,'g'); set(gca,'xticklabel',{' '}); end, end, title('Quad');
subplot(5,2,10), if Final_Result_Five(2)==1; bar(Final_Result_Five,'r'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Five(1)==1; bar(Final_Result_Five,'y'); set(gca,'xticklabel',{'Warning','Alarm'}); end, if Final_Result_Five(1)==0; if Final_Result_Five(2)==0; bar(1,'g'); set(gca,'xticklabel',{' '}); end, end, title('Five');
