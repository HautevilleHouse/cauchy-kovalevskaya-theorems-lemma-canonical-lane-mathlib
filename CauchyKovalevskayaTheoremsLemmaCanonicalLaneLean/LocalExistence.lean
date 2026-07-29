import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticPDESetup

/-!
# Local Existence Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure LocalExistencePackage {P : AnalyticPDEPackage} where
  analyticSolutionExists : Prop
  uniqueness : Prop
  domainOfExistence : Prop
  smoothness : Prop

structure LocalExistenceEvidence {P : AnalyticPDEPackage} (L : LocalExistencePackage P) where
  analyticSolutionExistsClosed : L.analyticSolutionExists
  uniquenessClosed : L.uniqueness
  domainOfExistenceClosed : L.domainOfExistence
  smoothnessClosed : L.smoothness

def LocalExistenceClosed {P : AnalyticPDEPackage} (L : LocalExistencePackage P) : Prop :=
  L.analyticSolutionExists ∧ L.uniqueness ∧ L.domainOfExistence ∧ L.smoothness

theorem local_existence_closed_from_evidence
    {P : AnalyticPDEPackage} (L : LocalExistencePackage P)
    (E : LocalExistenceEvidence L) : LocalExistenceClosed L := by
  exact And.intro E.analyticSolutionExistsClosed
    (And.intro E.uniquenessClosed
      (And.intro E.domainOfExistenceClosed E.smoothnessClosed))

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse