import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure NonCharacteristicHypersurface where
  manifoldType : Type
  manifoldTopology : TopologicalSpace manifoldType
  embeddedSubmanifold : Prop
  nonCharacteristicCondition : Prop
  analyticInLocalCoordinates : Prop
  embeddedSubmanifoldTerm : embeddedSubmanifold
  nonCharacteristicConditionTerm : nonCharacteristicCondition
  analyticInLocalCoordinatesTerm : analyticInLocalCoordinates

structure NonCharacteristicCauchyDataPackage
    {A : AnalyticPDESystem} (S : AnalyticPDESystemEvidence A)
    (H : NonCharacteristicHypersurface) where
  initialDataAssignments : Type
  compatibilityWithPDE : Prop
  analyticExtensionProperty : Prop
  compatibilityWithPDEClosed : compatibilityWithPDE
  analyticExtensionPropertyClosed : analyticExtensionProperty

structure NonCharacteristicCauchyDataEvidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {H : NonCharacteristicHypersurface}
    (C : NonCharacteristicCauchyDataPackage S H) where
  compatibilityWithPDEClosed : C.compatibilityWithPDE
  analyticExtensionPropertyClosed : C.analyticExtensionProperty

def NonCharacteristicCauchyDataClosed
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {H : NonCharacteristicHypersurface}
    (C : NonCharacteristicCauchyDataPackage S H) : Prop :=
  C.compatibilityWithPDE ∧ C.analyticExtensionProperty

theorem non_characteristic_cauchy_data_closed_from_evidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {H : NonCharacteristicHypersurface}
    (C : NonCharacteristicCauchyDataPackage S H)
    (E : NonCharacteristicCauchyDataEvidence C) :
    NonCharacteristicCauchyDataClosed C := by
  exact And.intro E.compatibilityWithPDEClosed E.analyticExtensionPropertyClosed

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse