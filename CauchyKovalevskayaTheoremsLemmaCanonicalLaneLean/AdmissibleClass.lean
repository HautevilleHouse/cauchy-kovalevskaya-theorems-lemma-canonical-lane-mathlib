import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CKAdmittedObject where
  systemType : Type u
  initialData : Type v
  analyticFibration : Prop
  cauchyDataPrescribed : Prop
  analyticSolutionExists : Prop
  conclusion : analyticSolutionExists

structure AdmissibleClass where
  object : CKAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CKAnalyticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse