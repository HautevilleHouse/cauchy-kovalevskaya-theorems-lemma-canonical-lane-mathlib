import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure HolomorphicDataPackage where
  complexDomain : Type u
  analyticCoefficients : Prop
  cauchyDataAnalytic : Prop
  complexification : Prop

structure HolomorphicDataEvidence (H : HolomorphicDataPackage) where
  analyticCoefficientsClosed : H.analyticCoefficients
  cauchyDataAnalyticClosed : H.cauchyDataAnalytic
  complexificationClosed : H.complexification

def HolomorphicDataClosed (H : HolomorphicDataPackage) : Prop :=
  H.analyticCoefficients ∧ H.cauchyDataAnalytic ∧ H.complexification

theorem holomorphic_data_closed_from_evidence
    (H : HolomorphicDataPackage) (E : HolomorphicDataEvidence H) :
    HolomorphicDataClosed H := by
  exact And.intro E.analyticCoefficientsClosed (And.intro E.cauchyDataAnalyticClosed E.complexificationClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse