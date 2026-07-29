import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Analytic PDE Setup Package
-/

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AnalyticPDEPackage where
  dimension : ℕ
  dependentVariables : ℕ
  independentVariables : ℕ
  pdeSystem : Prop
  analyticCoefficients : Prop
  domainNonempty : Prop
  initialSurfaceNoncharacteristic : Prop

structure AnalyticPDEEvidence (P : AnalyticPDEPackage) where
  pdeSystemClosed : P.pdeSystem
  analyticCoefficientsClosed : P.analyticCoefficients
  domainNonemptyClosed : P.domainNonempty
  initialSurfaceNoncharacteristicClosed : P.initialSurfaceNoncharacteristic

def AnalyticPDEClosed (P : AnalyticPDEPackage) : Prop :=
  P.pdeSystem ∧ P.analyticCoefficients ∧ P.domainNonempty ∧ P.initialSurfaceNoncharacteristic

theorem analytic_pde_closed_from_evidence
    (P : AnalyticPDEPackage) (E : AnalyticPDEEvidence P) :
    AnalyticPDEClosed P := by
  exact And.intro E.pdeSystemClosed
    (And.intro E.analyticCoefficientsClosed
      (And.intro E.domainNonemptyClosed E.initialSurfaceNoncharacteristicClosed))

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse