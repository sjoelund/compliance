within ModelicaCompliance.Algorithms.Assert;

model AssertVarLevel
  extends Icons.TestCase;
 
  Real x(start = 0);
algorithm
  x := time;
  assert(x < 0.5, "This assert should abort the simulation at time 0.6.",
    if x > 0.6 then AssertionLevel.error else AssertionLevel.warning);

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 1),
    Documentation(
      info = "<html>Checks that the assertion level can itself be dependent on a
        condition.</html>"));
end AssertVarLevel;
