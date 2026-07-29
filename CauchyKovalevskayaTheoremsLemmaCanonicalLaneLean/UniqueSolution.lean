import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticSystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure UniqueSolutionPackage (S : AnalyticSystem) where
  localSolutionExists : Prop
  solutionUniqueness : Prop
  analyticContinuation : Prop

structure UniqueSolutionEvidence {S : AnalyticSystem} (U : UniqueSolutionPackage S) where
  localSolutionExistsClosed : U.localSolutionExists
  solutionUniquenessClosed : U.solutionUniqueness
  analyticContinuationClosed : U.analyticContinuation

def UniqueSolutionClosed {S : AnalyticSystem} (U : UniqueSolutionPackage S) : Prop :=
  U.localSolutionExists ∧ U.solutionUniqueness ∧ U.analyticContinuation

theorem unique_solution_closed_from_evidence {S : AnalyticSystem} (U : UniqueSolutionPackage S) (E : UniqueSolutionEvidence U) :
  UniqueSolutionClosed U := by
  exact And.intro E.localSolutionExistsClosed (And.intro E.solutionUniquenessClosed E.analyticContinuationClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse