within ModelicaCompliance.Arrays.Indexing;

model ArrayIndexing12
  extends Icons.TestCase;

  Integer x[4] = {15, 16, 17, 18};
  Integer y[3];
equation
  y = x[1:3];
  
  assert(y[1] == 15, "The element of y[1] must be 15");
  assert(y[2] == 16, "The element of y[2] must be 16");
  assert(y[3] == 17, "The element of y[3] must be 17");  
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.5"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that it is possible to retrieve some elements of a vector as the vector.</html>"));
end ArrayIndexing12;
