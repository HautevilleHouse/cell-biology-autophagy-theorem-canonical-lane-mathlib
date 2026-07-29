import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure AutophagicFluxPackage {A : AutophagyPackage} {M : MTORSignalingPackage A}
    {F : AutophagosomeFormationPackage A M} {R : CargoRecognitionPackage A F M}
    {L : LysosomalFusionPackage A F M R} where
  fluxMeasurement : Type u
  turnoverRate : Type v
  stressInduction : Prop
  baselineFlux : Prop
  inducedFlux : Prop
  fluxIntegration : Prop

structure AutophagicFluxEvidence {A : AutophagyPackage} {M : MTORSignalingPackage A}
    {F : AutophagosomeFormationPackage A M} {R : CargoRecognitionPackage A F M}
    {L : LysosomalFusionPackage A F M R} (Fl : AutophagicFluxPackage A M F R L) where
  baselineFluxClosed : Fl.baselineFlux
  inducedFluxClosed : Fl.inducedFlux
  fluxIntegrationClosed : Fl.fluxIntegration

def AutophagicFluxClosed {A : AutophagyPackage} {M : MTORSignalingPackage A}
    {F : AutophagosomeFormationPackage A M} {R : CargoRecognitionPackage A F M}
    {L : LysosomalFusionPackage A F M R} (Fl : AutophagicFluxPackage A M F R L) : Prop :=
  Fl.baselineFlux ∧ Fl.inducedFlux ∧ Fl.fluxIntegration

theorem autophagic_flux_closed_from_evidence {A : AutophagyPackage} {M : MTORSignalingPackage A}
    {F : AutophagosomeFormationPackage A M} {R : CargoRecognitionPackage A F M}
    {L : LysosomalFusionPackage A F M R} (Fl : AutophagicFluxPackage A M F R L)
    (E : AutophagicFluxEvidence Fl) : AutophagicFluxClosed Fl := by
  exact And.intro E.baselineFluxClosed
    (And.intro E.inducedFluxClosed E.fluxIntegrationClosed)

end AutophagyCanonicalLaneLean
end HautevilleHouse