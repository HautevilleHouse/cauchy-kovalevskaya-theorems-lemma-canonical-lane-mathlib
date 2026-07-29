import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyKovalevskayaPDEPackage where
  unknownFunction : Type u
  independentVariables : Type v
  pdeSystem : Prop
  order : Nat
  analyticCoefficients : Prop
  pdeSystemTerm : pdeSystem
  analyticCoefficientsTerm : analyticCoefficients

def CauchyKovalevskayaPDEClosed (P : CauchyKovalevskayaPDEPackage) : Prop :=
  P.pdeSystem ∧ P.analyticCoefficients

theorem cauchy_kovalevskaya_pde_closed (P : CauchyKovalevskayaPDEPackage) : CauchyKovalevskayaPDEClosed P :=
  And.intro P.pdeSystemTerm P.analyticCoefficientsTerm

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse