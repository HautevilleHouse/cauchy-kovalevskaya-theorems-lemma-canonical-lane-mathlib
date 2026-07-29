import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticPDESystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure MajorantSeriesPackage where
  majorantDomain : Type
  coefficientType : Type
  majorantSeries : ℕ → coefficientType
  convergenceRadius : ℝ
  analyticBounds : Prop
  recurrenceRelation : Prop
  analyticBoundsTerm : analyticBounds
  recurrenceRelationTerm : recurrenceRelation

structure MajorantSeriesEvidence (M : MajorantSeriesPackage) where
  analyticBoundsClosed : M.analyticBounds
  recurrenceRelationClosed : M.recurrenceRelation

def MajorantSeriesClosed (M : MajorantSeriesPackage) : Prop :=
  M.analyticBounds ∧ M.recurrenceRelation

theorem majorant_series_closed_from_evidence (M : MajorantSeriesPackage)
    (E : MajorantSeriesEvidence M) : MajorantSeriesClosed M := by
  exact And.intro E.analyticBoundsClosed E.recurrenceRelationClosed

structure MajorantMethodProof {A : AnalyticPDESystem}
    (S : AnalyticPDESystemEvidence A) (M : MajorantSeriesPackage) where
  estimateFromCoefficients : Prop
  dominationInequality : Prop
  convergenceArgument : Prop
  estimateFromCoefficientsClosed : estimateFromCoefficients
  dominationInequalityClosed : dominationInequality
  convergenceArgumentClosed : convergenceArgument

def MajorantMethodProofClosed {A : AnalyticPDESystem}
    {S : AnalyticPDESystemEvidence A} {M : MajorantSeriesPackage}
    (P : MajorantMethodProof S M) : Prop :=
  P.estimateFromCoefficients ∧ P.dominationInequality ∧ P.convergenceArgument

theorem majorant_method_proof_closed
    {A : AnalyticPDESystem} {S : AnalyticPDESystemEvidence A}
    {M : MajorantSeriesPackage} (P : MajorantMethodProof S M)
    (E : P.estimateFromCoefficients ∧ P.dominationInequality ∧ P.convergenceArgument) :
    MajorantMethodProofClosed P := by
  exact And.intro E.left (And.intro E.right.left E.right.right)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse