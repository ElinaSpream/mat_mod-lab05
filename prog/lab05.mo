model lab05
  parameter Real a = 0.45; // коэффициент естественной смертности хищников
  parameter Real b = 0.47; // коэффициент естественного прироста жертв
  parameter Real c = 0.046; // коэффициент увеличения числа хищников 
  parameter Real d = 0.048; // коэффициент смертности жертв

  parameter Real x0 = 7; 
  parameter Real y0 = 12; //начальное значение x и у (популяция хищников и популяция жертв)

  //parameter Real x0 = b/d; 
  //parameter Real y0 = a/c; //стационарное состояние

  Real x(start=x0);
  Real y(start=y0);
equation
  der(x) = -a*x + c*x*y;
  der(y) = b*y - d*x*y;
end lab05;