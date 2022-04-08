# This file was generated, do not modify it. # hide
problems = CUTEst.select(max_con=0, only_free_var=true)
length(problems)

problems = CUTEst.select(contype="unc")
length(problems)