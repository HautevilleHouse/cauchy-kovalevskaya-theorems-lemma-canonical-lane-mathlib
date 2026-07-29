import canonicalLaneMathlib.AdmissibleClass
import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AnalyticInitialDataPackage where
  analyticManifold : Type u
  analyticPDESystem : Type v
  initialData : Type w
  analyticCoefficients : Prop
  analyticInitialCondition : Prop
  nonCharacteristicSurface : Prop

structure AnalyticInitialDataEvidence (P : AnalyticInitialDataPackage) where
  analyticCoefficientsClosed : P.analyticCoefficients
  analyticInitialConditionClosed : P.analyticInitialCondition
  nonCharacteristicSurfaceClosed : P.nonCharacteristicSurface

def AnalyticInitialDataClosed (P : AnalyticInitialDataPackage) : Prop :=
  P.analyticCoefficients ∧ P.analyticInitialCondition ∧ P.nonCharacteristicSurface

theorem analytic_initial_data_closed_from_evidence
    (P : AnalyticInitialDataPackage) (E : AnalyticInitialDataEvidence P) :
    AnalyticInitialDataClosed P :=
  And.intro E.analyticCoefficientsClosed
    (And.intro E.analyticInitialConditionClosed E.nonCharacteristicSurfaceClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse