within ModelicaCompliance.Arrays.Operations.MatrixProduct;

model ArrayMatrixVectorMul3
  extends Icons.TestCase;
  
  
  Real  r[1] = [4, 5, 6] * {1, 2, 3};
equation 
  assert(Util.compareReal(r[1], 32.0), "The element of r[1] must be 32.0");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.6.7"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that matrix by vector multiplication of arrays with numeric elements is possible.</html>"));
end ArrayMatrixVectorMul3;
