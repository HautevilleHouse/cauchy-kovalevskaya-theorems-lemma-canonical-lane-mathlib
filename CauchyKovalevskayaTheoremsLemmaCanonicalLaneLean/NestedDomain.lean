import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure NestedDomainPackage where
  innerDomain : Type u
  outerDomain : Type v
  analyticExtension : Prop
  convergenceDomain : Prop
  analyticExtensionTerm : analyticExtension
  convergenceDomainTerm : convergenceDomain

structure NestedDomainEvidence (N : NestedDomainPackage) where
  analyticExtensionClosed : N.analyticExtension
  convergenceDomainClosed : N.convergenceDomain

def NestedDomainClosed (N : NestedDomainPackage) : Prop :=
  N.analyticExtension ∧ N.convergenceDomain

theorem nested_domain_closed_from_evidence (N : NestedDomainPackage) (E : NestedDomainEvidence N) :
    NestedDomainClosed N := by
  exact And.intro E.analyticExtensionClosed E.convergenceDomainClosed

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse