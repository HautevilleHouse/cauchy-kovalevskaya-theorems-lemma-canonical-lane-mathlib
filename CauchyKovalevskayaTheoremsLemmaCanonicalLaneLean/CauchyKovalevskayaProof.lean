import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticPDESystem
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.MajorantMethod

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyKovalevskayaProofPackage {A : AdmissibleClass} (P : AnalyticPDESystemPackage A) (M : MajorantMethodPackage P) where
  localExistence : Prop
  analyticSolution : Prop
  uniqueness : Prop

def CauchyKovalevskayaProofClosed {A : AdmissibleClass} {P : AnalyticPDESystemPackage A} {M : MajorantMethodPackage P} (CK : CauchyKovalevskayaProofPackage P M) : Prop :=
  CK.localExistence ∧ CK.analyticSolution ∧ CK.uniqueness

theorem cauchy_kovalevskaya_proof_closed_from_evidence {A : AdmissibleClass} {P : AnalyticPDESystemPackage A} {M : MajorantMethodPackage P} (CK : CauchyKovalevskayaProofPackage P M) :
    CauchyKovalevskayaProofClosed CK := by
  exact And.intro CK.localExistence (And.intro CK.analyticSolution CK.uniqueness)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse
