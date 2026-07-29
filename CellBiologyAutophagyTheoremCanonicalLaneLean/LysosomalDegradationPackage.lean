import CellBiologyAutophagyTheoremCanonicalLaneLean.AutophagySignalingPathway

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure LysosomalDegradationPackage {P : AutophagySignalingPathwayPackage} where
  autophagosomeLysosomeFusion : Prop
  acidificationMaintained : Prop
  hydrolaseActivity : Prop
  cargoBreakdown : Prop
  fusionClosed : autophagosomeLysosomeFusion
  acidificationClosed : acidificationMaintained
  hydrolaseClosed : hydrolaseActivity
  breakdownClosed : cargoBreakdown
  degradationEvidence : LysosomalDegradationEvidence

structure LysosomalDegradationEvidence {P : AutophagySignalingPathwayPackage}
    (L : LysosomalDegradationPackage P) where
  fusionClosed : L.autophagosomeLysosomeFusion
  acidificationClosed : L.acidificationMaintained
  hydrolaseClosed : L.hydrolaseActivity
  breakdownClosed : L.cargoBreakdown

def LysosomalDegradationClosed {P : AutophagySignalingPathwayPackage}
    (L : LysosomalDegradationPackage P) : Prop :=
  L.autophagosomeLysosomeFusion ∧ L.acidificationMaintained ∧
  L.hydrolaseActivity ∧ L.cargoBreakdown

theorem lysosomal_degradation_closed_from_evidence
    {P : AutophagySignalingPathwayPackage}
    (L : LysosomalDegradationPackage P) (E : LysosomalDegradationEvidence L) :
    LysosomalDegradationClosed L := by
  exact And.intro E.fusionClosed
    (And.intro E.acidificationClosed
      (And.intro E.hydrolaseClosed E.breakdownClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse
