module StringDistances

using Distances

include("distances/utils.jl")
include("distances/edit.jl")
include("distances/qgram.jl")
include("normalize.jl")

const StringDistance = Union{Jaro, Levenshtein, DamerauLevenshtein, RatcliffObershelp, QGramDistance, Winkler, Partial, TokenSort, TokenSet, TokenMax, Normalize}
# Distances API
Distances.result_type(dist::StringDistance, s1, s2) = typeof(dist("", ""))
include("find.jl")


##############################################################################
##
## Export
##
##############################################################################

export
StringDistance,
Levenshtein,
DamerauLevenshtein,
Jaro,
RatcliffObershelp,
QGram,
Cosine,
Jaccard,
SorensenDice,
Overlap,
Winkler,
Partial,
TokenSort,
TokenSet,
TokenMax,
evaluate,
compare,
result_type,
qgrams,
normalize,
findnearest
end

