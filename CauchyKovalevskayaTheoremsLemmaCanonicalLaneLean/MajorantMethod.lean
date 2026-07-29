import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure MajorantMethodPackage where
  majorantSystem : Prop
  comparisonPrinciple : Prop
  convergenceRadius : ℝ
  majorantBound : ℝ
  estimatesConstructed : Prop

structure MajorantMethodEvidence (M : MajorantMethodPackage) where
  majorantSystemClosed : M.majorantSystem
  comparisonPrincipleClosed : M.comparisonPrinciple
  estimatesConstructedClosed : M.estimatesConstructed

def MajorantMethodClosed (M : MajorantMethodPackage) : Prop :=
  M.majorantSystem ∧ M.comparisonPrinciple ∧ M.estimatesConstructed

theorem majorant_method_closed_from_evidence
    (M : MajorantMethodPackage) (E : MajorantMethodEvidence M) :
    MajorantMethodClosed M := by
  exact And.intro E.majorantSystemClosed (And.intro E.comparisonPrincipleClosed E.estimatesConstructedClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse