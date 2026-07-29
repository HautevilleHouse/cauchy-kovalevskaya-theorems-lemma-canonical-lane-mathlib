import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyKovalevskayaUniquenessPackage
    {A : AnalyticPDESystem} (S : AnalyticPDESystemEvidence A) where
  analyticInitialDataToUniqueness : Prop
  uniquenessProof : Prop
  domainCompatibility : Prop
  analyticInitialDataToUniquenessClosed : analyticInitialDataToUniqueness
  uniquenessProofClosed : uniquenessProof
  domainCompatibilityClosed : domainCompatibility

structure CauchyKovalevskayaUniquenessEvidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    (C : CauchyKovalevskayaUniquenessPackage S) where
  analyticInitialDataToUniquenessClosed : C.analyticInitialDataToUniqueness
  uniquenessProofClosed : C.uniquenessProof
  domainCompatibilityClosed : C.domainCompatibility

def CauchyKovalevskayaUniquenessClosed
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    (C : CauchyKovalevskayaUniquenessPackage S) : Prop :=
  C.analyticInitialDataToUniqueness ∧ C.uniquenessProof ∧ C.domainCompatibility

theorem cauchy_kovalevskaya_uniqueness_closed_from_evidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    (C : CauchyKovalevskayaUniquenessPackage S)
    (E : CauchyKovalevskayaUniquenessEvidence C) :
    CauchyKovalevskayaUniquenessClosed C := by
  exact And.intro E.analyticInitialDataToUniquenessClosed
    (And.intro E.uniquenessProofClosed E.domainCompatibilityClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse