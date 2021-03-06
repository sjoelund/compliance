within ModelicaCompliance.Operators.Mathematical;

model DivInteger
  extends Icons.TestCase;

  Integer i;
equation
  i = div(45, 4);
  
  assert(i == 11, "The value of i should be 11");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.7.1.1"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the built-in div function is possible and if both arguments are type integer the result shall have type integer.</html>"));
end DivInteger;
