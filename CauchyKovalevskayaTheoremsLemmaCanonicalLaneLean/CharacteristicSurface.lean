import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CharacteristicSurface where
  manifold : Type u
  embedding : Type v
  cauchyData : Prop
  nonCharacteristic : Prop
  smoothness : Prop

structure CharacteristicSurfaceEvidence (S : CharacteristicSurface) where
  cauchyDataClosed : S.cauchyData
  nonCharacteristicClosed : S.nonCharacteristic
  smoothnessClosed : S.smoothness

def CharacteristicSurfaceClosed (S : CharacteristicSurface) : Prop :=
  S.cauchyData ∧ S.nonCharacteristic ∧ S.smoothness

theorem characteristic_surface_closed_from_evidence
    (S : CharacteristicSurface) (E : CharacteristicSurfaceEvidence S) :
    CharacteristicSurfaceClosed S := by
  exact And.intro E.cauchyDataClosed (And.intro E.nonCharacteristicClosed E.smoothnessClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse