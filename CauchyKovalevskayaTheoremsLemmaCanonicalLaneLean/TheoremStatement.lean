import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure AdmittedObject where
  system : AnalyticSystem ℕ
  uniqueSolutionExists : Prop
  analyticSolution : RealAnalyticFunction (Fin (system.unknowns + system.independentVars))
  conclusion : uniqueSolutionExists

def TheoremWitnessClosed (O : AdmittedObject) : Prop :=
  O.uniqueSolutionExists

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse