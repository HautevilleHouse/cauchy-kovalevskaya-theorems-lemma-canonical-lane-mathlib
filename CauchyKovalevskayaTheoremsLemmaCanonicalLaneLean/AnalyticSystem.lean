import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AnalyticSystem where
  manifoldType : Type u
  fibration : Type v
  cauchySurface : Prop
  systemAnalytic : Prop
  initialDataAnalytic : Prop

def CKAnalyticWitnessClosed (O : CKAdmittedObject) : Prop :=
  O.analyticSolutionExists

structure AnalyticSystemEvidence (S : AnalyticSystem) where
  cauchySurfaceClosed : S.cauchySurface
  systemAnalyticClosed : S.systemAnalytic
  initialDataAnalyticClosed : S.initialDataAnalytic

theorem analytic_system_closed_from_evidence (S : AnalyticSystem) (E : AnalyticSystemEvidence S) :
  S.cauchySurface ∧ S.systemAnalytic ∧ S.initialDataAnalytic := by
  exact And.intro E.cauchySurfaceClosed (And.intro E.systemAnalyticClosed E.initialDataAnalyticClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse