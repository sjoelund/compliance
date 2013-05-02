within ModelicaCompliance.Algorithms.For;

model ImplicitMultiMixedIterator
  extends Icons.TestCase;

  type E = enumeration(one, two);
  Real x[3, Boolean, E], y[E, 3, Boolean];
algorithm
  for i, j, k loop
    y[k, i, j] := i * Integer(k) * (if j == false then 1 else 2);
    x[i, j, k] := 2 * y[k, i, j];
  end for;

  assert(abs(x[1, 1, 1] - 2.0) < 1e-10,  "x[1, 1, 1] was not set correctly.");
  assert(abs(x[1, 1, 2] - 4.0) < 1e-10,  "x[1, 1, 2] was not set correctly.");
  assert(abs(x[1, 2, 1] - 4.0) < 1e-10,  "x[1, 2, 1] was not set correctly.");
  assert(abs(x[1, 2, 2] - 8.0) < 1e-10,  "x[1, 2, 2] was not set correctly.");
  assert(abs(x[2, 1, 1] - 4.0) < 1e-10,  "x[2, 1, 1] was not set correctly.");
  assert(abs(x[2, 1, 2] - 8.0) < 1e-10,  "x[2, 1, 2] was not set correctly.");
  assert(abs(x[2, 2, 1] - 8.0) < 1e-10,  "x[2, 2, 1] was not set correctly.");
  assert(abs(x[2, 2, 2] - 16.0) < 1e-10, "x[2, 2, 2] was not set correctly.");
  assert(abs(x[3, 1, 1] - 6.0) < 1e-10,  "x[3, 1, 1] was not set correctly.");
  assert(abs(x[3, 1, 2] - 12.0) < 1e-10, "x[3, 1, 2] was not set correctly.");
  assert(abs(x[3, 2, 1] - 12.0) < 1e-10, "x[3, 2, 1] was not set correctly.");
  assert(abs(x[3, 2, 2] - 24.0) < 1e-10, "x[3, 2, 2] was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true)),
    experiment(StopTime = 0.01),
    Documentation(
    info = "<html>Tests multiple implicit iteration ranges with mixed types in a
      for-statement.</html>"));
end ImplicitMultiMixedIterator;
