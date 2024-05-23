# Dynamic-Positioning-system-identification-and-control-of-marine-vessels---using-the-OSP-simulator
Here the Dynamic Positioning for the Gunnerus-DP from the OSP package will be published. 
The developed system consist of multiple MATLAB scripts and Simulink files. 
First Simulink file is an open loop test of the selected marine vessel.
The second Simulink file is an system identification setup where random square waves are being inputed to the system and the outputs are measured.
The third Simulink file is an state estimator based on the famous Kalman filter
The fourth Simulink file is an MPC controller for the Gunnerus DP. 

Steps to run: 
1. First you have to obtain the Gunnerus-DP package from the OSP webpage. https://open-simulation-platform.github.io/cosim-demo-app/Gunnerus-DP
2. Update the FMU link to thruster dynamics and vessel model.
3. Then you must implement qpOASES and compile it for the problem.  Steps can be found here: https://web01.usn.no/~roshans/mpc/
4. Place the project in the same folder as qpOASES. ex: C:\temp\qpOASES\qp_OASES\interfaces\simulink

More info can be found here: https://youtu.be/qUpC_xEQWXc 
