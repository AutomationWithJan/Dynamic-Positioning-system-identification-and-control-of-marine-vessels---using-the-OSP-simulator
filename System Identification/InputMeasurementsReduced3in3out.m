%Inputs
%SurgeInput = out.INPUT{1}.Values.Data(:,1);
%SwayInput = out.INPUT{1}.Values.Data(:,2);
%YawInput = out.INPUT{1}.Values.Data(:,3);
SurgeInput = out.U(:,1);
SwayInput = out.U(:,2);
YawInput = out.U(:,3);

%Outputs
%positionNorth = out.OUTPUT{1}.Values.Data(:,1);
%positionEast = out.OUTPUT{1}.Values.Data(:,2);
%positionYaw = out.OUTPUT{1}.Values.Data(:,3);
positionNorth = out.Y(:,1);
positionEast = out.Y(:,2);
positionYaw= out.Y(:,3);


%Check that all vectors are of same length
if length(SurgeInput)==length(SwayInput) && length(SurgeInput)==length(YawInput) ...
        && length(SurgeInput)==length(positionNorth) && ...
        length(SurgeInput)==length(positionEast) && ...
        length(SurgeInput)==length(positionYaw) 


    %Making input matrix
    U = [SurgeInput, SwayInput, YawInput];
    %Making output matrix
    Y = [positionNorth, positionEast, positionYaw];
    
else

    error("Data vectors are of different lenght");

end




%positionDown = out.OUTPUT{1}.Values.Data(:,3);
%positionRoll = out.OUTPUT{1}.Values.Data(:,4);
%positionPitch = out.OUTPUT{1}.Values.Data(:,5);
%velocitySurge = out.OUTPUT{1}.Values.Data(:,4);
%velocitySway = out.OUTPUT{1}.Values.Data(:,5);
%velocityYaw = out.OUTPUT{1}.Values.Data(:,6);
%accelerationSurge = out.OUTPUT{1}.Values.Data(:,10);
%accelerationSway = out.OUTPUT{1}.Values.Data(:,11);
%accelerationYaw = out.OUTPUT{1}.Values.Data(:,12);