clc; clear all; close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Help
%  You can use this code for laminata with 20 or under than lamina
%  with same thickness
%  ! please pay attention to the following 9 steps
%  1)you can use exist material or add new material from line 24 like example
%  2)please enter the lamina thickness in line 30
%  3)please enter the laminate code like matrix
%  example:if laminate code is [0/30/45] ---> laminate_code=[0 30 45]
%  4)In Tsai-Wu we need to understand wich lamina we are analys and need to 
%  define this lamina material
%  5)"z" is position of lamina that we want to analys
%  example: in 9 layer lamina with 0.0025m thickness lamina the position of
%  top surface in first lamina is -0.01125 so ---> z=-0.01125
%  6)In Tsai-Wu we need to understand wich lamina we are analys and need to 
%  define this lamina number to define angle of this lamina
%  7)for designing shaft we need to output radius of shaft in line 35
%  8)from line 42 to line 49 please enter the force, moment and torsion
%  9)from line 52 to line 71 please enter each lamina material
%  example: material_l1=graphite_epoxy
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  Material property from table(2-1) page 98 like as [E1 E2 v12 G12 sigma1_T_ult sigma1_C_ult sigma2_T_ult sigma2_C_ult taw12_ult]
graphite_epoxy = [181*10^9 10.3*10^9 0.28 7.17*10^9 1500*10^6 1500*10^6 40*10^6 246*10^6 68*10^6];
glass_epoxy = [38.6*10^9 8.27*10^9 0.26 4.14*10^9 1062*10^6 610*10^6 31*10^6 118*10^6 72*10^6];
boron_epoxy = [204*10^9 18.50*10^9 0.23 5.59*10^9 1260*10^6 2500*10^6 61*10^6 202*10^6 67*10^6];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=0.0025; %thickness of lamina
laminate_code=[45 45 -45 45 45 45 -45 45 45];
lamina_material=graphite_epoxy; %Tsai-Wu Coeficent for this material & stress_off_axis_material
z=-0.01125,; %layer position in meter dimension
layer_number=1; %%number of layer you want to analys
r_o=0.0275; %shaft output radius in meter dimension
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plies=numel(laminate_code)
t_total=t*plies      %(page 399)
r_m=r_o-(t_total/2); %(page 399)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%force, moment and torsion
T=107;  %torsion (N.m)
N_x=0;  %force (N/m)
N_y=0; %force (N/m)
N_xy=T/(2*pi*r_m^2) %(5-31) %force (N/m)
%N_xy=0; %if you want use N_xy manually
M_x=0; %moment
M_y=0; %moment
M_xy=0; %moment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% material of layer
material_l1=graphite_epoxy;
material_l2=graphite_epoxy;
material_l3=graphite_epoxy;
material_l4=graphite_epoxy;
material_l5=graphite_epoxy;
material_l6=graphite_epoxy;
material_l7=graphite_epoxy;
material_l8=graphite_epoxy;
material_l9=graphite_epoxy;
material_l10=graphite_epoxy;
material_l11=graphite_epoxy;
material_l12=graphite_epoxy;
material_l13=graphite_epoxy;
material_l14=graphite_epoxy;
material_l15=graphite_epoxy;
material_l16=graphite_epoxy;
material_l17=graphite_epoxy;
material_l18=graphite_epoxy;
material_l19=graphite_epoxy;
material_l20=graphite_epoxy;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if plies==1
    if layer_number==1
        theta_lamina=laminate_code(1,1)
        else 
        display("just we have 1 layer!")
    end
elseif plies==2
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    else 
        display("just we have 2 layer!")
    end
elseif plies==3
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    else 
        display("just we have 3 layer!")
    end
elseif plies==4
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    else 
        display("just we have 4 layer!")
    end
elseif plies==5
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    else 
        display("just we have 5 layer!")
    end
elseif plies==6
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    else 
        display("just we have 6 layer!")
    end
elseif plies==7
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    else 
        display("just we have 7 layer!")
    end
elseif plies==8
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    else 
        display("just we have 8 layer!")
    end
elseif plies==9
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    else 
        display("just we have 9 layer!")
    end
elseif plies==10
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    else 
        display("just we have 10 layer!")
    end
elseif plies==11
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    else 
        display("just we have 11 layer!")
    end
elseif plies==12
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    else 
        display("just we have 12 layer!")
    end
elseif plies==13
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    else 
        display("just we have 13 layer!")
    end
elseif plies==14
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    else 
        display("just we have 14 layer!")
    end
elseif plies==15
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    elseif layer_number==15
        theta_lamina=laminate_code(1,15)
    else 
        display("just we have 15 layer!")
    end
elseif plies==16
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    elseif layer_number==15
        theta_lamina=laminate_code(1,15)
    elseif layer_number==16
        theta_lamina=laminate_code(1,16)
    else 
        display("just we have 16 layer!")
    end
elseif plies==17
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    elseif layer_number==15
        theta_lamina=laminate_code(1,15)
    elseif layer_number==16
        theta_lamina=laminate_code(1,16)
    elseif layer_number==17
        theta_lamina=laminate_code(1,17)
    else 
        display("just we have 17 layer!")
    end
elseif plies==18
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    elseif layer_number==15
        theta_lamina=laminate_code(1,15)
    elseif layer_number==16
        theta_lamina=laminate_code(1,16)
    elseif layer_number==17
        theta_lamina=laminate_code(1,17)
    elseif layer_number==18
        theta_lamina=laminate_code(1,18)
    else 
        display("just we have 18 layer!")
    end
elseif plies==19
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    elseif layer_number==15
        theta_lamina=laminate_code(1,15)
    elseif layer_number==16
        theta_lamina=laminate_code(1,16)
    elseif layer_number==17
        theta_lamina=laminate_code(1,17)
    elseif layer_number==18
        theta_lamina=laminate_code(1,18)
    elseif layer_number==19
        theta_lamina=laminate_code(1,19)
    else 
        display("just we have 19 layer!")
    end
elseif plies==20
    if layer_number==1
        theta_lamina=laminate_code(1,1)
    elseif layer_number==2
        theta_lamina=laminate_code(1,2)
    elseif layer_number==3
        theta_lamina=laminate_code(1,3)
    elseif layer_number==4
        theta_lamina=laminate_code(1,4)
    elseif layer_number==5
        theta_lamina=laminate_code(1,5)
    elseif layer_number==6
        theta_lamina=laminate_code(1,6)
    elseif layer_number==7
        theta_lamina=laminate_code(1,7)
    elseif layer_number==8
        theta_lamina=laminate_code(1,8)
    elseif layer_number==9
        theta_lamina=laminate_code(1,9)
    elseif layer_number==10
        theta_lamina=laminate_code(1,10)
    elseif layer_number==11
        theta_lamina=laminate_code(1,11)
    elseif layer_number==12
        theta_lamina=laminate_code(1,12)
    elseif layer_number==13
        theta_lamina=laminate_code(1,13)
    elseif layer_number==14
        theta_lamina=laminate_code(1,14)
    elseif layer_number==15
        theta_lamina=laminate_code(1,15)
    elseif layer_number==16
        theta_lamina=laminate_code(1,16)
    elseif layer_number==17
        theta_lamina=laminate_code(1,17)
    elseif layer_number==18
        theta_lamina=laminate_code(1,18)
    elseif layer_number==19
        theta_lamina=laminate_code(1,19)
    elseif layer_number==20
        theta_lamina=laminate_code(1,20)
    else 
        display("just we have 20 layer!")
    end
else
    display("please enter laminate with 20 or under than lamina")
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h_0=t_total/-2;
Reuter=[1 0 0; 0 1 0; 0 0 2]; %(2-101)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [Q]=Q(material)
E1=material(1,1);
E2=material(1,2);
v12=material(1,3);
G12=material(1,4);
v21=E2*(v12/E1);
Q11=E1/(1-v21*v12);
Q12=(v12*E2)/(1-v21*v12);
Q22=E2/(1-v21*v12);
Q66=G12;
Q16=0;
Q26=0;
Q=[Q11 Q12 Q16; Q12 Q22 Q26; Q16 Q26 Q66];
end

function [Tr]=trans(theta)
theta_r=theta*(pi/180);
Tr=[cos(theta_r)^2 sin(theta_r)^2 2*sin(theta_r)*cos(theta_r); sin(theta_r)^2 cos(theta_r)^2 -2*sin(theta_r)*cos(theta_r); -sin(theta_r)*cos(theta_r) sin(theta_r)*cos(theta_r) cos(theta_r)^2-sin(theta_r)^2]; %(2-96)
end

function [Q_bar]=Q_bar(material,theta)
R=[1 0 0; 0 1 0; 0 0 2]; %(2-101)
Q_bar=inv(trans(theta))*Q(material)*R*trans(theta)*inv(R);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if plies==1
    angle_l1=laminate_code(1,1);
    A=t*(Q_bar(material_l1,angle_l1)) %(4-28-A)
    B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)) %(4-28-B)
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)) %(4-28-C)
elseif plies==2
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2))
    B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2))
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3))
elseif plies==3
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3))
    if (angle_l1==angle_l3)
        B=[0 0 0; 0 0 0; 0 0 0]
    else    
        B=(0.5)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3))
elseif plies==4
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4))
    if (angle_l1==angle_l4) && (angle_l2==angle_l3)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3))
elseif plies==5
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5))
    if (angle_l1==angle_l5) && (angle_l2==angle_l4)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3))
elseif plies==6
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6))
    if (angle_l1==angle_l6) && (angle_l2==angle_l5) && (angle_l3==angle_l4)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3))
elseif plies==7
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7))
    if (angle_l1==angle_l7) && (angle_l2==angle_l6) && (angle_l3==angle_l5)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3))
elseif plies==8
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8))
    if (angle_l1==angle_l8) && (angle_l2==angle_l7) && (angle_l3==angle_l6) && (angle_l4==angle_l5)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3))
elseif plies==9
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9))
    if (angle_l1==angle_l9) && (angle_l2==angle_l8) && (angle_l3==angle_l7) && (angle_l4==angle_l6)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3))
elseif plies==10
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10))
    if (angle_l1==angle_l10) && (angle_l2==angle_l9) && (angle_l3==angle_l8) && (angle_l4==angle_l7) && (angle_l5==angle_l6)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3))
elseif plies==11
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11))
    if (angle_l1==angle_l11) && (angle_l2==angle_l10) && (angle_l3==angle_l9) && (angle_l4==angle_l8) && (angle_l5==angle_l7)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3))
elseif plies==12
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12))
    if (angle_l1==angle_l12) && (angle_l2==angle_l11) && (angle_l3==angle_l10) && (angle_l4==angle_l9) && (angle_l5==angle_l8) && (angle_l6==angle_l7)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3))
elseif plies==13
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13))
    if (angle_l1==angle_l13) && (angle_l2==angle_l12) && (angle_l3==angle_l11) && (angle_l4==angle_l110) && (angle_l5==angle_l9) && (angle_l6==angle_l8)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3))
elseif plies==14
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14))
    if (angle_l1==angle_l14) && (angle_l2==angle_l13) && (angle_l3==angle_l12) && (angle_l4==angle_l11) && (angle_l5==angle_l10) && (angle_l6==angle_l9) && (angle_l7==angle_l8)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3))
elseif plies==15
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    angle_l15=laminate_code(1,15);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14)+Q_bar(material_l15,angle_l15))
    if (angle_l1==angle_l15) && (angle_l2==angle_l14) && (angle_l3==angle_l13) && (angle_l4==angle_l12) && (angle_l5==angle_l11) && (angle_l6==angle_l10) && (angle_l7==angle_l9)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^2-(h_0+14*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^3-(h_0+14*t)^3))
elseif plies==16
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    angle_l15=laminate_code(1,15);
    angle_l16=laminate_code(1,16);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14)+Q_bar(material_l15,angle_l15)+Q_bar(material_l16,angle_l16))
    if (angle_l1==angle_l16) && (angle_l2==angle_l15) && (angle_l3==angle_l14) && (angle_l4==angle_l13) && (angle_l5==angle_l12) && (angle_l6==angle_l11) && (angle_l7==angle_l10) && (angle_l8==angle_l9)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^2-(h_0+14*t)^2)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^2-(h_0+15*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^3-(h_0+14*t)^3)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^3-(h_0+15*t)^3))
elseif plies==17
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    angle_l15=laminate_code(1,15);
    angle_l16=laminate_code(1,16);
    angle_l17=laminate_code(1,17);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14)+Q_bar(material_l15,angle_l15)+Q_bar(material_l16,angle_l16)+Q_bar(material_l17,angle_l17))
    if (angle_l1==angle_l17) && (angle_l2==angle_l16) && (angle_l3==angle_l15) && (angle_l4==angle_l14) && (angle_l5==angle_l13) && (angle_l6==angle_l12) && (angle_l7==angle_l11) && (angle_l8==angle_l10)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^2-(h_0+14*t)^2)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^2-(h_0+15*t)^2)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^2-(h_0+16*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^3-(h_0+14*t)^3)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^3-(h_0+15*t)^3)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^3-(h_0+16*t)^3))
elseif plies==18
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    angle_l15=laminate_code(1,15);
    angle_l16=laminate_code(1,16);
    angle_l17=laminate_code(1,17);
    angle_l18=laminate_code(1,18);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14)+Q_bar(material_l15,angle_l15)+Q_bar(material_l16,angle_l16)+Q_bar(material_l17,angle_l17)+Q_bar(material_l18,angle_l18))
    if (angle_l1==angle_l18) && (angle_l2==angle_l17) && (angle_l3==angle_l16) && (angle_l4==angle_l15) && (angle_l5==angle_l14) && (angle_l6==angle_l13) && (angle_l7==angle_l12) && (angle_l8==angle_l11) && (angle_l9==angle_l10)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^2-(h_0+14*t)^2)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^2-(h_0+15*t)^2)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^2-(h_0+16*t)^2)+Q_bar(material_l18,angle_l18)*((h_0+18*t)^2-(h_0+17*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^3-(h_0+14*t)^3)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^3-(h_0+15*t)^3)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^3-(h_0+16*t)^3)+Q_bar(material_l18,angle_l18)*((h_0+18*t)^3-(h_0+17*t)^3))
elseif plies==19
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    angle_l15=laminate_code(1,15);
    angle_l16=laminate_code(1,16);
    angle_l17=laminate_code(1,17);
    angle_l18=laminate_code(1,18);
    angle_l19=laminate_code(1,19);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14)+Q_bar(material_l15,angle_l15)+Q_bar(material_l16,angle_l16)+Q_bar(material_l17,angle_l17)+Q_bar(material_l18,angle_l18)+Q_bar(material_l19,angle_l19))
    if (angle_l1==angle_l19) && (angle_l2==angle_l18) && (angle_l3==angle_l17) && (angle_l4==angle_l16) && (angle_l5==angle_l15) && (angle_l6==angle_l14) && (angle_l7==angle_l13) && (angle_l8==angle_l12) && (angle_l9==angle_l11)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^2-(h_0+14*t)^2)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^2-(h_0+15*t)^2)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^2-(h_0+16*t)^2)+Q_bar(material_l18,angle_l18)*((h_0+18*t)^2-(h_0+17*t)^2)+Q_bar(material_l19,angle_l19)*((h_0+19*t)^2-(h_0+18*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^3-(h_0+14*t)^3)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^3-(h_0+15*t)^3)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^3-(h_0+16*t)^3)+Q_bar(material_l18,angle_l18)*((h_0+18*t)^3-(h_0+17*t)^3)+Q_bar(material_l19,angle_l19)*((h_0+19*t)^3-(h_0+18*t)^3))
elseif plies==20
    angle_l1=laminate_code(1,1);
    angle_l2=laminate_code(1,2);
    angle_l3=laminate_code(1,3);
    angle_l4=laminate_code(1,4);
    angle_l5=laminate_code(1,5);
    angle_l6=laminate_code(1,6);
    angle_l7=laminate_code(1,7);
    angle_l8=laminate_code(1,8);
    angle_l9=laminate_code(1,9);
    angle_l10=laminate_code(1,10);
    angle_l11=laminate_code(1,11);
    angle_l12=laminate_code(1,12);
    angle_l13=laminate_code(1,13);
    angle_l14=laminate_code(1,14);
    angle_l15=laminate_code(1,15);
    angle_l16=laminate_code(1,16);
    angle_l17=laminate_code(1,17);
    angle_l18=laminate_code(1,18);
    angle_l19=laminate_code(1,19);
    angle_l20=laminate_code(1,20);
    A=t*(Q_bar(material_l1,angle_l1)+Q_bar(material_l2,angle_l2)+Q_bar(material_l3,angle_l3)+Q_bar(material_l4,angle_l4)+Q_bar(material_l5,angle_l5)+Q_bar(material_l6,angle_l6)+Q_bar(material_l7,angle_l7)+Q_bar(material_l8,angle_l8)+Q_bar(material_l9,angle_l9)+Q_bar(material_l10,angle_l10)+Q_bar(material_l11,angle_l11)+Q_bar(material_l12,angle_l12)+Q_bar(material_l13,angle_l13)+Q_bar(material_l14,angle_l14)+Q_bar(material_l15,angle_l15)+Q_bar(material_l16,angle_l16)+Q_bar(material_l17,angle_l17)+Q_bar(material_l18,angle_l18)+Q_bar(material_l19,angle_l19)+Q_bar(material_l20,angle_l20))
    if (angle_l1==angle_l20) && (angle_l2==angle_l19) && (angle_l3==angle_l18) && (angle_l4==angle_l17) && (angle_l5==angle_l16) && (angle_l6==angle_l15) && (angle_l7==angle_l14) && (angle_l8==angle_l13) && (angle_l9==angle_l12) && (angle_l10==angle_l11)
        B=[0 0 0; 0 0 0; 0 0 0]
    else
        B=(1/2)*(Q_bar(material_l1,angle_l1)*((h_0+t)^2-(h_0)^2)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^2-(h_0+t)^2)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^2-(h_0+2*t)^2)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^2-(h_0+3*t)^2)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^2-(h_0+4*t)^2)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^2-(h_0+5*t)^2)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^2-(h_0+6*t)^2)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^2-(h_0+7*t)^2)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^2-(h_0+8*t)^2)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^2-(h_0+9*t)^2)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^2-(h_0+10*t)^2)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^2-(h_0+11*t)^2)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^2-(h_0+12*t)^2)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^2-(h_0+13*t)^2)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^2-(h_0+14*t)^2)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^2-(h_0+15*t)^2)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^2-(h_0+16*t)^2)+Q_bar(material_l18,angle_l18)*((h_0+18*t)^2-(h_0+17*t)^2)+Q_bar(material_l19,angle_l19)*((h_0+19*t)^2-(h_0+18*t)^2)+Q_bar(material_l20,angle_l20)*((h_0+20*t)^2-(h_0+19*t)^2))
    end
    D=(1/3)*(Q_bar(material_l1,angle_l1)*((h_0+t)^3-(h_0)^3)+Q_bar(material_l2,angle_l2)*((h_0+2*t)^3-(h_0+t)^3)+Q_bar(material_l3,angle_l3)*((h_0+3*t)^3-(h_0+2*t)^3)+Q_bar(material_l4,angle_l4)*((h_0+4*t)^3-(h_0+3*t)^3)+Q_bar(material_l5,angle_l5)*((h_0+5*t)^3-(h_0+4*t)^3)+Q_bar(material_l6,angle_l6)*((h_0+6*t)^3-(h_0+5*t)^3)+Q_bar(material_l7,angle_l7)*((h_0+7*t)^3-(h_0+6*t)^3)+Q_bar(material_l8,angle_l8)*((h_0+8*t)^3-(h_0+7*t)^3)+Q_bar(material_l9,angle_l9)*((h_0+9*t)^3-(h_0+8*t)^3)+Q_bar(material_l10,angle_l10)*((h_0+10*t)^3-(h_0+9*t)^3)+Q_bar(material_l11,angle_l11)*((h_0+11*t)^3-(h_0+10*t)^3)+Q_bar(material_l12,angle_l12)*((h_0+12*t)^3-(h_0+11*t)^3)+Q_bar(material_l13,angle_l13)*((h_0+13*t)^3-(h_0+12*t)^3)+Q_bar(material_l14,angle_l14)*((h_0+14*t)^3-(h_0+13*t)^3)+Q_bar(material_l15,angle_l15)*((h_0+15*t)^3-(h_0+14*t)^3)+Q_bar(material_l16,angle_l16)*((h_0+16*t)^3-(h_0+15*t)^3)+Q_bar(material_l17,angle_l17)*((h_0+17*t)^3-(h_0+16*t)^3)+Q_bar(material_l18,angle_l18)*((h_0+18*t)^3-(h_0+17*t)^3)+Q_bar(material_l19,angle_l19)*((h_0+19*t)^3-(h_0+18*t)^3)+Q_bar(material_l20,angle_l20)*((h_0+20*t)^3-(h_0+19*t)^3))
else
    display("please enter laminate with 20 or under than lamina")
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A11=A(1,1); A12=A(1,2); A16=A(1,3); A22=A(2,2); A26=A(2,3); A66=A(3,3); %(4-29)
B11=B(1,1); B12=B(1,2); B16=B(1,3); B22=B(2,2); B26=B(2,3); B66=B(3,3); %(4-29)
D11=D(1,1); D12=D(1,2); D16=D(1,3); D22=D(2,2); D26=D(2,3); D66=D(3,3); %(4-29)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stiffness=[A11 A12 A16 B11 B12 B16; A12 A22 A26 B12 B22 B26; A16 A26 A66 B16 B26 B66; B11 B12 B16 D11 D12 D16; B12 B22 B26 D12 D22 D26; B16 B26 B66 D16 D26 D66] %(4-29)
strain0=inv(stiffness)*[N_x; N_y; N_xy; M_x; M_y; M_xy] %(4-31)
epsilon0_x=strain0(1,1); epsilon0_y=strain0(2,1); gamma0_xy=strain0(3,1); kappa_x=strain0(4,1); kappa_y=strain0(5,1); kappa_z=strain0(6,1);
compliance=inv(stiffness) %(4-32_A)
A_star=[compliance(1,1) compliance(1,2) compliance(1,3); compliance(2,1) compliance(2,2) compliance(2,3); compliance(3,1) compliance(3,2) compliance(3,3)] %(4-32_A)
B_star=[compliance(1,4) compliance(1,5) compliance(1,6); compliance(2,4) compliance(2,5) compliance(2,6); compliance(3,4) compliance(3,5) compliance(3,6)] %(4-32_A)
D_star=[compliance(4,4) compliance(4,5) compliance(4,6); compliance(5,4) compliance(5,5) compliance(5,6); compliance(6,4) compliance(6,5) compliance(6,6)] %(4-32_A)
C_star=transpose(B_star) %(4-32_B)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E_x=1/(t_total*A_star(1,1)) %(4-35)
E_y=1/(t_total*A_star(2,2)) %(4-37)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
T_cr=(2*pi*r_m^2*t_total)*(0.272)*((E_x*E_y^3)^(1/4))*((t_total/r_m)^(3/2)) %(5-32)
SR_torsion=T_cr/T %(2-142)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
strain=[epsilon0_x; epsilon0_y; gamma0_xy]+z*[kappa_x; kappa_y; kappa_z]; %(4-16)
strain_on_axis=Reuter*trans(theta_lamina)*inv(Reuter)*strain; %(2-100)
epsilon_1=strain_on_axis(1,1)
epsilon_2=strain_on_axis(2,1)
gamma_12=strain_on_axis(3,1)
stress_off_axis=Q_bar(lamina_material,theta_lamina)*strain; %(2-103)
sigma_x=stress_off_axis(1,1); sigma_y=stress_off_axis(2,1); taw_xy=stress_off_axis(3,1);
stress_on_axis=trans(theta_lamina)*stress_off_axis; %(2-94)
sigma_1=stress_on_axis(1,1)
sigma_2=stress_on_axis(2,1)
taw_12=stress_on_axis(3,1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [H1 H11 H2 H22 H6 H66 H12]=tsai_par(material)
sigma1_T_ult=material(1,5);
sigma1_C_ult=material(1,6);
sigma2_T_ult=material(1,7);
sigma2_C_ult=material(1,8);
taw12_ult=material(1,9);
H1=(1/sigma1_T_ult)-(1/sigma1_C_ult); %(2-155)
H11=1/(sigma1_T_ult*sigma1_C_ult); %(2-156)
H2=(1/sigma2_T_ult)-(1/sigma2_C_ult); %(2-159)
H22=1/(sigma2_T_ult*sigma2_C_ult); %(2-160)
H6=0; %(2-163)
H66=1/(taw12_ult^2); %(2-164)
H12=(-1/2)*(sqrt(1/(sigma1_T_ult*sigma1_C_ult*sigma2_T_ult*sigma2_C_ult))); %(2-171-C)
end
[H1 H11 H2 H22 H6 H66 H12]=tsai_par(lamina_material);
syms x; assume(x>0);
eqn=H1*sigma_1*x+H2*sigma_2*x+H6*taw_12*x+H11*sigma_1^2*x^2+H22*sigma_2^2*x^2+H66*taw_12^2*x^2+2*H12*sigma_1*sigma_2*x^2==1; %(2-152)
SR=solve(eqn,x)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  all equations are taken from "Autar K. Kaw, (2006), Mechanics of composite
%  materials" book.
%
%  developed by amir hossein akbari
%  department of Mechanical Engineering
%  sahand university of technology