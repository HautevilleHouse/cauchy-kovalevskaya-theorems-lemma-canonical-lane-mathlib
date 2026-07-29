import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyKovalevskayaExistencePackage where
  pdeData : NonlinearAnalyticPDEPackage
  surfaceData : CharacteristicSurface
  formalData : FormalPowerSeries
  localExistenceClaim : Prop
  uniquenessClaim : Prop
  analyticDependence : Prop

structure CauchyKovalevskayaExistenceEvidence (P : CauchyKovalevskayaExistencePackage) where
  localExistenceClaimClosed : P.localExistenceClaim
  uniquenessClaimClosed : P.uniquenessClaim
  analyticDependenceClosed : P.analyticDependence

def CauchyKovalevskayaExistenceClosed (P : CauchyKovalevskayaExistencePackage) : Prop :=
  P.localExistenceClaim ∧ P.uniquenessClaim ∧ P.analyticDependence

theorem cauchy_kovalevskaya_existence_closed_from_evidence
    (P : CauchyKovalevskayaExistencePackage) (E : CauchyKovalevskayaExistenceEvidence P) :
    CauchyKovalevskayaExistenceClosed P := by
  exact And.intro E.localExistenceClaimClosed (And.intro E.uniquenessClaimClosed E.analyticDependenceClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse