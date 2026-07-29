import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure PowerSeriesAnalyticPackage where
  coefficientRing : Type u
  variableCount : Nat
  formalPowerSeries : Type v
  analyticAtOrigin : Prop
  convergenceRadius : Prop
  cauchyEstimate : Prop

structure PowerSeriesAnalyticEvidence (P : PowerSeriesAnalyticPackage) where
  analyticAtOriginClosed : P.analyticAtOrigin
  convergenceRadiusClosed : P.convergenceRadius
  cauchyEstimateClosed : P.cauchyEstimate

def PowerSeriesAnalyticClosed (P : PowerSeriesAnalyticPackage) : Prop :=
  P.analyticAtOrigin ∧ P.convergenceRadius ∧ P.cauchyEstimate

theorem power_series_analytic_closed_from_evidence (P : PowerSeriesAnalyticPackage)
    (E : PowerSeriesAnalyticEvidence P) : PowerSeriesAnalyticClosed P := by
  exact And.intro E.analyticAtOriginClosed (And.intro E.convergenceRadiusClosed E.cauchyEstimateClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse