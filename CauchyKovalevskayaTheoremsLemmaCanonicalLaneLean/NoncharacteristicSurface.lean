import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure NoncharacteristicSurfacePackage where
  surface : Type u
  embedding : Type v
  noncharacteristicCondition : Prop
  smoothness : Prop
  noncharacteristicConditionTerm : noncharacteristicCondition
  smoothnessTerm : smoothness

def NoncharacteristicSurfaceClosed (S : NoncharacteristicSurfacePackage) : Prop :=
  S.noncharacteristicCondition ∧ S.smoothness

theorem noncharacteristic_surface_closed (S : NoncharacteristicSurfacePackage) : NoncharacteristicSurfaceClosed S :=
  And.intro S.noncharacteristicConditionTerm S.smoothnessTerm

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse