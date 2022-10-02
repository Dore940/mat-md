model Project
  parameter  Real a(start=0.36);
  parameter  Real b(start=0.48);
  parameter  Real c(start=0.49);
  parameter  Real h(start=0.37); 
  Real y1(start=52000);
  Real y2(start=49000);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(time+1)+1;
    der(y2)= -c*y1-h*y2 + cos(time+2)+1.1;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;


model Project
  parameter  Real a(start=0.11);
  parameter  Real b(start=0.68);
  parameter  Real c(start=0.6);
  parameter  Real h(start=0.15); 
  Real y1(start=52000);
  Real y2(start=49000);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(5*time)+1.1;
    der(y2)= -c*y1*y2-h*y2 + cos(5*time)+1;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;
