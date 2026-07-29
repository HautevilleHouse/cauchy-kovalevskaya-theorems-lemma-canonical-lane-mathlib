import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure LocalExistenceDomainPackage where
  spaceVariableDomain : Set ℝ
  timeInterval : Set ℝ
  analyticInDomain : Prop
  solutionExistsLocally : Prop
  solutionUniqueness : Prop

structure LocalExistenceDomainEvidence (D : LocalExistenceDomainPackage) where
  analyticInDomainClosed : D.analyticInDomain
  solutionExistsLocallyClosed : D.solutionExistsLocally
  solutionUniquenessClosed : D.solutionUniqueness

def LocalExistenceDomainClosed (D : LocalExistenceDomainPackage) : Prop :=
  D.analyticInDomain ∧ D.solutionExistsLocally ∧ D.solutionUniqueness

theorem local_existence_domain_closed_from_evidence (D : LocalExistenceDomainPackage)
    (E : LocalExistenceDomainEvidence D) : LocalExistenceDomainClosed D := by
  exact And.intro E.analyticInDomainClosed
    (And.intro E.solutionExistsLocallyClosed E.solutionUniquenessClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse