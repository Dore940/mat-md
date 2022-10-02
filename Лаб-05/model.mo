model Project
  parameter  Real a=0.63;
  parameter  Real b=0.019;
  parameter  Real c=0.59;
  parameter  Real d=0.018;
  
  Real x(start=7);
  Real y(start=12);
  
  equation
    der(x)= -a*x + b*x*y;
    der(y)= c*y - d*x*y;

  
  annotation(experiment(StartTime=0, StopTime=200, Tplerance=1e-06,Interval=0.05));

end Project;
