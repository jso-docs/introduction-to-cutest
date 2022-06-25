# This file was generated, do not modify it. # hide
problems = CUTEst.select(min_con=1, only_equ_con=true, only_free_var=true)
length(problems)

problems = CUTEst.select(min_con=1, only_ineq_con=true, only_free_var=true)
length(problems)