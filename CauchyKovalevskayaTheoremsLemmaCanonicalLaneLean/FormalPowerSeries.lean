import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean

structure FormalPowerSeries where
  coefficients : ℕ → ℕ → ℝ  -- placeholder for tensor representation
  radiusBound : ℝ
  convergenceProperty : Prop
  recursiveConstruction : Prop

structure FormalPowerSeriesEvidence (F : FormalPowerSeries) where
  radiusBoundClosed : F.radiusBound > 0
  convergencePropertyClosed : F.convergenceProperty
  recursiveConstructionClosed : F.recursiveConstruction

def FormalPowerSeriesClosed (F : FormalPowerSeries) : Prop :=
  F.radiusBound > 0 ∧ F.convergenceProperty ∧ F.recursiveConstruction

theorem formal_power_series_closed_from_evidence
    (F : FormalPowerSeries) (E : FormalPowerSeriesEvidence F) :
    FormalPowerSeriesClosed F := by
  exact And.intro E.radiusBoundClosed (And.intro E.convergencePropertyClosed E.recursiveConstructionClosed)

end CauchyKovalevskayaTheoremsLemmaCanonicalLaneLean
end HautevilleHouse