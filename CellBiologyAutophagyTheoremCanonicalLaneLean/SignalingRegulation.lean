import CellBiologyAutophagyTheoremCanonicalLaneLean.LysosomeFusion

/-!
# Signaling Regulation Package
-/

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure SignalingRegulationPackage {A : AutophagosomeFormationPackage}
    {L : LysosomeFusionPackage A} where
  mTORC1Inhibition : Prop
  AMPKActivation : Prop
  ULK1ComplexActivation : Prop
  transcriptionRegulation : Prop
  stressResponseIntegration : Prop

structure SignalingRegulationEvidence {A : AutophagosomeFormationPackage}
    {L : LysosomeFusionPackage A} (S : SignalingRegulationPackage A L) where
  mTORC1InhibitionClosed : S.mTORC1Inhibition
  AMPKActivationClosed : S.AMPKActivation
  ULK1ComplexActivationClosed : S.ULK1ComplexActivation
  transcriptionRegulationClosed : S.transcriptionRegulation
  stressResponseIntegrationClosed : S.stressResponseIntegration

def SignalingRegulationClosed {A : AutophagosomeFormationPackage}
    {L : LysosomeFusionPackage A} (S : SignalingRegulationPackage A L) : Prop :=
  S.mTORC1Inhibition ∧ S.AMPKActivation ∧
  S.ULK1ComplexActivation ∧ S.transcriptionRegulation ∧ S.stressResponseIntegration

theorem signaling_regulation_closed_from_evidence
    {A : AutophagosomeFormationPackage} {L : LysosomeFusionPackage A}
    (S : SignalingRegulationPackage A L) (E : SignalingRegulationEvidence S) :
    SignalingRegulationClosed S := by
  exact And.intro E.mTORC1InhibitionClosed
    (And.intro E.AMPKActivationClosed
      (And.intro E.ULK1ComplexActivationClosed
        (And.intro E.transcriptionRegulationClosed E.stressResponseIntegrationClosed)))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse