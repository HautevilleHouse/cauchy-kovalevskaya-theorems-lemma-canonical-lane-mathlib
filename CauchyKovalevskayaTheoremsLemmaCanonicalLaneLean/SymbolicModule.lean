import CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean.AnalyticSystem

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure SymbolicModulePackage (n : Type) where
  unknowns : Nat
  independentVars : Nat
  equation : Type
  linearization : Type
  formalPowerSeries : Prop
  recursionStructure : Prop
  symbolicInverse : Prop

structure SymbolicModuleEvidence (n : Type) (S : SymbolicModulePackage n) where
  formalPowerSeriesClosed : S.formalPowerSeries
  recursionStructureClosed : S.recursionStructure
  symbolicInverseClosed : S.symbolicInverse

def SymbolicModuleClosed (n : Type) (S : SymbolicModulePackage n) : Prop :=
  S.formalPowerSeries ∧ S.recursionStructure ∧ S.symbolicInverse

theorem symbolic_module_closed_from_evidence (n : Type) (S : SymbolicModulePackage n)
    (E : SymbolicModuleEvidence n S) : SymbolicModuleClosed n S :=
  And.intro E.formalPowerSeriesClosed
    (And.intro E.recursionStructureClosed E.symbolicInverseClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse