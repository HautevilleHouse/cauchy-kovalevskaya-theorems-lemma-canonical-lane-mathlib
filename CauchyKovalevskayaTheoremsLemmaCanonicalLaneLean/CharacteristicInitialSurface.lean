import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CharacteristicInitialSurfacePackage where
  manifold : Type u
  dimension : Nat
  initialSurface : Set manifold
  nonCharacteristic : Prop
  analyticFunctionsOnSurface : Prop
  initialDataProvided : Prop

structure CharacteristicInitialSurfaceEvidence
    (S : CharacteristicInitialSurfacePackage) where
  nonCharacteristicClosed : S.nonCharacteristic
  analyticFunctionsOnSurfaceClosed : S.analyticFunctionsOnSurface
  initialDataProvidedClosed : S.initialDataProvided

def CharacteristicInitialSurfaceClosed (S : CharacteristicInitialSurfacePackage) : Prop :=
  S.nonCharacteristic ∧ S.analyticFunctionsOnSurface ∧ S.initialDataProvided

theorem characteristic_initial_surface_closed_from_evidence
    (S : CharacteristicInitialSurfacePackage)
    (E : CharacteristicInitialSurfaceEvidence S) : CharacteristicInitialSurfaceClosed S := by
  exact And.intro E.nonCharacteristicClosed
    (And.intro E.analyticFunctionsOnSurfaceClosed E.initialDataProvidedClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse