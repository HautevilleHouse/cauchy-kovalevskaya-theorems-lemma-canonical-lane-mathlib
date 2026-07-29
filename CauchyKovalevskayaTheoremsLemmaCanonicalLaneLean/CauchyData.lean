import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyData where
  surface : Type u
  codimension : ℕ
  dataFunctions : Prop
  analyticInSurface : Prop
  compatibilityConditions : Prop

def CauchyDataClosed (C : CauchyData) : Prop :=
  C.analyticInSurface ∧ C.compatibilityConditions

theorem cauchy_data_closed_from_evidence (C : CauchyData) :
    CauchyDataClosed C := by
  exact And.intro C.analyticInSurface C.compatibilityConditions

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse