import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RealAnalyticFunctionClosed (A.object.analyticFunction) ∧
  AnalyticInitialDataClosed (A.object.initialData) ∧
  CauchyKovalevskayaPDEClosed (A.object.pde) ∧
  NoncharacteristicSurfaceClosed (A.object.surface)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    have h1 : RealAnalyticFunctionClosed (A.object.analyticFunction) := real_analytic_function_closed (A.object.analyticFunction)
    have h2 : AnalyticInitialDataClosed (A.object.initialData) := analytic_initial_data_closed (A.object.initialData)
    have h3 : CauchyKovalevskayaPDEClosed (A.object.pde) := cauchy_kovalevskaya_pde_closed (A.object.pde)
    have h4 : NoncharacteristicSurfaceClosed (A.object.surface) := noncharacteristic_surface_closed (A.object.surface)
    exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse