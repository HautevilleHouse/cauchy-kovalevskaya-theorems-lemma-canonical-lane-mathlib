import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyKovalevskayaLocalExistencePackage
    {A : AnalyticPDESystem} (S : AnalyticPDESystemEvidence A) where
  analyticCoefficientsToExistence : Prop
  localExistenceInterval : Prop
  localExistenceProof : Prop
  analyticCoefficientsToExistenceClosed : analyticCoefficientsToExistence
  localExistenceIntervalClosed : localExistenceInterval
  localExistenceProofClosed : localExistenceProof

structure CauchyKovalevskayaLocalExistenceEvidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    (C : CauchyKovalevskayaLocalExistencePackage S) where
  analyticCoefficientsToExistenceClosed : C.analyticCoefficientsToExistence
  localExistenceIntervalClosed : C.localExistenceInterval
  localExistenceProofClosed : C.localExistenceProof

def CauchyKovalevskayaLocalExistenceClosed
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    (C : CauchyKovalevskayaLocalExistencePackage S) : Prop :=
  C.analyticCoefficientsToExistence ∧ C.localExistenceInterval ∧ C.localExistenceProof

theorem cauchy_kovalevskaya_local_existence_closed_from_evidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    (C : CauchyKovalevskayaLocalExistencePackage S)
    (E : CauchyKovalevskayaLocalExistenceEvidence C) :
    CauchyKovalevskayaLocalExistenceClosed C := by
  exact And.intro E.analyticCoefficientsToExistenceClosed
    (And.intro E.localExistenceIntervalClosed E.localExistenceProofClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse