within ModelicaCompliance.Operators.Arithmetic;

model ExponentIntegers
  extends Icons.TestCase;

  constant Integer i = 8 ^ 3;
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that exponentiation of integer scalars should not 
		return type integer.</html>"));
end ExponentIntegers;
