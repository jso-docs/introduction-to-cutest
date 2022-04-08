# This file was generated, do not modify it.

using CUTEst

nlp = CUTEstModel("ROSENBR")

finalize(nlp)

using CUTEst, NLPModels

nlp = CUTEstModel("ROSENBR")
println("x0 = $( nlp.meta.x0 )")
println("fx = $( obj(nlp, nlp.meta.x0) )")
println("gx = $( grad(nlp, nlp.meta.x0) )")
println("Hx = $( hess(nlp, nlp.meta.x0) )")

v = ones(nlp.meta.nvar)
hprod(nlp, nlp.meta.x0, v)

H = hess_op(nlp, nlp.meta.x0)
H * v

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

using CUTEst, NLPModels

nlp = CUTEstModel("HS35")

x = nlp.meta.x0

cons(nlp, x)

jac(nlp, x)

print(nlp.meta)

finalize(nlp)

using CUTEst # hide
problems = CUTEst.select()
length(problems)

problems = CUTEst.select(max_con=0, only_free_var=true)
length(problems)

problems = CUTEst.select(contype="unc")
length(problems)

problems = CUTEst.select(min_con=1, only_equ_con=true, only_free_var=true)
length(problems)

problems = CUTEst.select(min_con=1, only_ineq_con=true, only_free_var=true)
length(problems)

problems = CUTEst.select(min_var=1000, max_var=2000, min_con=100, max_con=500)
length(problems)

problems = CUTEst.select(objtype="sum_of_squares", contype="bounds")
length(problems)

problems = CUTEst.select(objtype="quadratic", contype="linear")
length(problems)

