within ModelicaCompliance.Operators.Logical;

model LogicalAnd
  extends Icons.TestCase;

  constant Boolean b1 = true and true;
  constant Boolean b2 = true and false;
  constant Boolean b3 = false and true;
  constant Boolean b4 = false and false;
equation
  assert(b1 == true, "The given condition for variable b1 should be true");
  assert(b2 == false, "The given condition for variable b2 should be false");
  assert(b3 == false, "The given condition for variable b3 should be false");
  assert(b4 == false, "The given condition for variable b4 should be false");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it's possible to define and logical operator.</html>"));
end LogicalAnd;
