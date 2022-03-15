# This file was generated, do not modify it. # hide
using CUTEst, NLPModels

nlp = CUTEstModel("HS35")

x = nlp.meta.x0

cons(nlp, x)

jac(nlp, x)