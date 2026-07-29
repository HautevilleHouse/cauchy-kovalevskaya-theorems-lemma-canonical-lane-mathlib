import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure ConvergenceDomain where
  domain : Type u
  norm : Type v
  powerSeriesConverges : Prop
  majorantSeries : Prop
  cauchyEstimates : Prop

def ConvergenceDomainClosed (D : ConvergenceDomain) : Prop :=
  D.powerSeriesConverges ∧ D.cauchyEstimates

theorem convergence_domain_closed_from_evidence (D : ConvergenceDomain) :
    ConvergenceDomainClosed D := by
  exact And.intro D.powerSeriesConverges D.cauchyEstimates

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse