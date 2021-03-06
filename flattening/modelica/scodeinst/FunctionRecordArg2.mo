// name: FunctionRecordArg2
// keywords:
// status: correct
// cflags:   -d=newInst
//

record R
  Real x = 1.0;
  Real y = 2.0;
end R;

function f
  output Real x;
protected
  R r;
algorithm
  x := r.x;
end f;

model M
  Real x = f();
end M;

// Result:
// function R "Automatically generated record constructor for R"
//   input Real x = 1.0;
//   input Real y = 2.0;
//   output R res;
// end R;
//
// function f
//   output Real x;
//   protected R r;
// algorithm
//   x := r.x;
// end f;
//
// class M
//   Real x = f();
// end M;
// endResult
