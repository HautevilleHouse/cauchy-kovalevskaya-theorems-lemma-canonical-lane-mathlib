import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.CauchyKovalevskayaLocalExistence

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AnalyticContinuationPossibility where
  extendedDomain : Type
  extensionTopology : TopologicalSpace extendedDomain
  analyticExtensionExists : Prop
  uniquenessOfExtension : Prop
  analyticExtensionExistsTerm : analyticExtensionExists
  uniquenessOfExtensionTerm : uniquenessOfExtension

structure CauchyKovalevskayaAnalyticContinuationPackage
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {L : CauchyKovalevskayaLocalExistencePackage S}
    (E : CauchyKovalevskayaLocalExistenceEvidence L)
    (Cont : AnalyticContinuationPossibility) where
  localToGlobalContinuation : Prop
  continuationMethod : Prop
  continuityBetweenPatches : Prop
  localToGlobalContinuationClosed : localToGlobalContinuation
  continuationMethodClosed : continuationMethod
  continuityBetweenPatchesClosed : continuityBetweenPatches

structure CauchyKovalevskayaAnalyticContinuationEvidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {L : CauchyKovalevskayaLocalExistencePackage S}
    {E : CauchyKovalevskayaLocalExistenceEvidence L}
    {Cont : AnalyticContinuationPossibility}
    (C : CauchyKovalevskayaAnalyticContinuationPackage E Cont) where
  localToGlobalContinuationClosed : C.localToGlobalContinuation
  continuationMethodClosed : C.continuationMethod
  continuityBetweenPatchesClosed : C.continuityBetweenPatches

def CauchyKovalevskayaAnalyticContinuationClosed
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {L : CauchyKovalevskayaLocalExistencePackage S}
    {E : CauchyKovalevskayaLocalExistenceEvidence L}
    {Cont : AnalyticContinuationPossibility}
    (C : CauchyKovalevskayaAnalyticContinuationPackage E Cont) : Prop :=
  C.localToGlobalContinuation ∧ C.continuationMethod ∧ C.continuityBetweenPatches

theorem cauchy_kovalevskaya_analytic_continuation_closed_from_evidence
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {L : CauchyKovalevskayaLocalExistencePackage S}
    {E : CauchyKovalevskayaLocalExistenceEvidence L}
    {Cont : AnalyticContinuationPossibility}
    (C : CauchyKovalevskayaAnalyticContinuationPackage E Cont)
    (Ev : CauchyKovalevskayaAnalyticContinuationEvidence C) :
    CauchyKovalevskayaAnalyticContinuationClosed C := by
  exact And.intro Ev.localToGlobalContinuationClosed
    (And.intro Ev.continuationMethodClosed Ev.continuityBetweenPatchesClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse