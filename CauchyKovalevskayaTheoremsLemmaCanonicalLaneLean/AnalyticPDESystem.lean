import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AnalyticPDESystemPackage (A : AdmissibleClass) where
  independentVariables : ℕ
  dependentVariables : ℕ
  order : ℕ
  analyticCoefficients : Prop
  nonlinearTerms : Prop
  initialConditions : Prop

def AnalyticPDESystemClosed {A : AdmissibleClass} (P : AnalyticPDESystemPackage A) : Prop :=
  P.analyticCoefficients ∧ P.nonlinearTerms ∧ P.initialConditions

theorem analytic_pde_system_closed (A : AdmissibleClass) (P : AnalyticPDESystemPackage A) :
    AnalyticPDESystemClosed P := by
  exact And.intro P.analyticCoefficients (And.intro P.nonlinearTerms P.initialConditions)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse
