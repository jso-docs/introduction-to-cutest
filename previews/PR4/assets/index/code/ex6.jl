# This file was generated, do not modify it. # hide
using Krylov

function newton()
  Delta = 10.0
  x = nlp.meta.x0
  println("0: x = $x")
  for i = 1:5
    print("$i: ")
    H = hess_op(nlp, x)
    d, stats = Krylov.cg(H, -grad(nlp, x), radius=Delta)
    x = x + d
    println("x = $x")
  end
end

finalize(nlp)