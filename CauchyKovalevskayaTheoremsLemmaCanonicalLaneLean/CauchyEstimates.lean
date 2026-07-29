import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CauchyEstimatesPackage where
  domain : Type u
  coefficients : Type v
  boundingSequence : Type w
  uniformBound : Prop
  powerSeriesConvergence : Prop
  uniformBoundTerm : uniformBound
  powerSeriesConvergenceTerm : powerSeriesConvergence

structure CauchyEstimatesEvidence (C : CauchyEstimatesPackage) where
  uniformBoundClosed : C.uniformBound
  powerSeriesConvergenceClosed : C.powerSeriesConvergence

def CauchyEstimatesClosed (C : CauchyEstimatesPackage) : Prop :=
  C.uniformBound ∧ C.powerSeriesConvergence

theorem cauchy_estimates_closed_from_evidence (C : CauchyEstimatesPackage) (E : CauchyEstimatesEvidence C) :
    CauchyEstimatesClosed C := by
  exact And.intro E.uniformBoundClosed E.powerSeriesConvergenceClosed

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse