import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure CKAdmittedObject where
  pdeSystem : Type u
  initialData : Type v
  analyticDomain : Type w
  pdeAnalytic : Prop
  initialDataAnalytic : Prop
  characteristicNonvanishing : Prop
  conclusion : Prop

def CKWitnessClosed (O : CKAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : CKAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CKWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse