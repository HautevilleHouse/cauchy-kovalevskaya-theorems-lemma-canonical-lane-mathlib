import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AnalyticInitialDataPackage where
  initialSurface : Type u
  jetData : Type v
  analyticCaughey : Prop
  compatibilityConditions : Prop
  analyticCaugheyTerm : analyticCaughey
  compatibilityConditionsTerm : compatibilityConditions

def AnalyticInitialDataClosed (D : AnalyticInitialDataPackage) : Prop :=
  D.analyticCaughey ∧ D.compatibilityConditions

theorem analytic_initial_data_closed (D : AnalyticInitialDataPackage) : AnalyticInitialDataClosed D :=
  And.intro D.analyticCaugheyTerm D.compatibilityConditionsTerm

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse