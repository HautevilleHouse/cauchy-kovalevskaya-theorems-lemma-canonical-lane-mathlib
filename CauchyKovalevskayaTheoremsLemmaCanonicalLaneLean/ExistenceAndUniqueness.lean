import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure ExistenceAndUniquenessPackage where
  initialData : Type u
  solutionSpace : Type v
  localExistence : Prop
  localUniqueness : Prop
  analyticDependence : Prop
  localExistenceTerm : localExistence
  localUniquenessTerm : localUniqueness
  analyticDependenceTerm : analyticDependence

structure ExistenceAndUniquenessEvidence (E : ExistenceAndUniquenessPackage) where
  localExistenceClosed : E.localExistence
  localUniquenessClosed : E.localUniqueness
  analyticDependenceClosed : E.analyticDependence

def ExistenceAndUniquenessClosed (E : ExistenceAndUniquenessPackage) : Prop :=
  E.localExistence ∧ E.localUniqueness ∧ E.analyticDependence

theorem existence_and_uniqueness_closed_from_evidence (E : ExistenceAndUniquenessPackage) (Ev : ExistenceAndUniquenessEvidence E) :
    ExistenceAndUniquenessClosed E := by
  exact And.intro Ev.localExistenceClosed (And.intro Ev.localUniquenessClosed Ev.analyticDependenceClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse