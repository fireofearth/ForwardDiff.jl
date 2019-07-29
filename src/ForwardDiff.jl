module ForwardDiff

using DiffRules, DiffResults
using DiffResults: DiffResult, MutableDiffResult, ImmutableDiffResult
using StaticArrays
using Random

 #=
 # Colin: using additional types we want to support
=#
using TaylorSeries: Taylor1
using AffineArithmetic: Affine

import NaNMath
import SpecialFunctions
import CommonSubexpressions

 #=
 # Colin: allowing support for additional types
=#
ResolvableType = Union{Affine, Taylor1, Real}

include("prelude.jl")
include("partials.jl")
include("dual.jl")
include("config.jl")
include("apiutils.jl")
include("derivative.jl")
include("gradient.jl")
include("jacobian.jl")
include("hessian.jl")

export DiffResults

end # module
