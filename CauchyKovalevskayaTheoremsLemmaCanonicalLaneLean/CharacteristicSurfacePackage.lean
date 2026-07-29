import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticInitialDataPackage

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CharacteristicSurfacePackage {P : AnalyticInitialDataPackage} where
  surfaceType : Type u
  nonCharacteristicCondition : Prop
  analyticContinuation : Prop

structure CharacteristicSurfaceEvidence {P : AnalyticInitialDataPackage}
    (C : CharacteristicSurfacePackage P) where
  nonCharacteristicConditionClosed : C.nonCharacteristicCondition
  analyticContinuationClosed : C.analyticContinuation

def CharacteristicSurfaceClosed {P : AnalyticInitialDataPackage}
    (C : CharacteristicSurfacePackage P) : Prop :=
  C.nonCharacteristicCondition ∧ C.analyticContinuation

theorem characteristic_surface_closed_from_evidence
    {P : AnalyticInitialDataPackage} (C : CharacteristicSurfacePackage P)
    (E : CharacteristicSurfaceEvidence C) : CharacteristicSurfaceClosed C :=
  And.intro E.nonCharacteristicConditionClosed E.analyticContinuationClosed

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse