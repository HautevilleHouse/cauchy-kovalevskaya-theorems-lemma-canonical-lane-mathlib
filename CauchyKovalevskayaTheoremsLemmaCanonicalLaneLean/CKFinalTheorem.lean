import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.CKBridgeLemmas
import HautevilleHouse.CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.CKGateLemmas

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

def ConstrainedCKClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ck_endgame (A : AdmissibleClass) :
    ConstrainedCKClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse