import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure RealAnalyticFunctionPackage where
  domain : Type u
  codomain : Type v
  powerSeriesExpansion : Prop
  radiusOfConvergence : Prop
  analyticOnDomain : Prop
  analyticOnDomainTerm : analyticOnDomain

def RealAnalyticFunctionClosed (P : RealAnalyticFunctionPackage) : Prop :=
  P.analyticOnDomain

theorem real_analytic_function_closed (P : RealAnalyticFunctionPackage) : RealAnalyticFunctionClosed P :=
  P.analyticOnDomainTerm

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse