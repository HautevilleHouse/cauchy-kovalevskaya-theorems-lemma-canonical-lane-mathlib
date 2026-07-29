import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure DomaineSimplificationPackage where
  initialSurface : Type u
  nonCharacteristic : Prop
  analyticTransformation : Prop
  reducedSystem : Prop
  nonCharacteristicTerm : nonCharacteristic
  analyticTransformationTerm : analyticTransformation
  reducedSystemTerm : reducedSystem

structure DomaineSimplificationEvidence (D : DomaineSimplificationPackage) where
  nonCharacteristicClosed : D.nonCharacteristic
  analyticTransformationClosed : D.analyticTransformation
  reducedSystemClosed : D.reducedSystem

def DomaineSimplificationClosed (D : DomaineSimplificationPackage) : Prop :=
  D.nonCharacteristic ∧ D.analyticTransformation ∧ D.reducedSystem

theorem domaine_simplification_closed_from_evidence (D : DomaineSimplificationPackage) (E : DomaineSimplificationEvidence D) :
    DomaineSimplificationClosed D := by
  exact And.intro E.nonCharacteristicClosed (And.intro E.analyticTransformationClosed E.reducedSystemClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse