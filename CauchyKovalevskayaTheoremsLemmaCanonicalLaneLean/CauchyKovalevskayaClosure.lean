import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

def ConstrainedCauchyKovalevskayaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cauchy_kovalevskaya_endgame (A : AdmissibleClass) :
    ConstrainedCauchyKovalevskayaClosure A :=
  by
    exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse