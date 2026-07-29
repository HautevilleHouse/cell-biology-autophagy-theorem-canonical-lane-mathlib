import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure NutrientSensingTORRegulationPackage where
  aminoAcidRagGtpase : Prop
  growthFactorAktSignaling : Prop
  energyAtpAmpkPathway : Prop
  torC1Phosphorylation : Prop

structure NutrientSensingTORRegulationEvidence (N : NutrientSensingTORRegulationPackage) where
  aminoAcidRagGtpaseClosed : N.aminoAcidRagGtpase
  growthFactorAktSignalingClosed : N.growthFactorAktSignaling
  energyAtpAmpkPathwayClosed : N.energyAtpAmpkPathway
  torC1PhosphorylationClosed : N.torC1Phosphorylation

def NutrientSensingTORRegulationClosed (N : NutrientSensingTORRegulationPackage) : Prop :=
  N.aminoAcidRagGtpase ∧ N.growthFactorAktSignaling ∧
  N.energyAtpAmpkPathway ∧ N.torC1Phosphorylation

theorem nutrient_sensing_tor_regulation_closed_from_evidence
    (N : NutrientSensingTORRegulationPackage) (E : NutrientSensingTORRegulationEvidence N) :
    NutrientSensingTORRegulationClosed N := by
  exact And.intro E.aminoAcidRagGtpaseClosed
    (And.intro E.growthFactorAktSignalingClosed
      (And.intro E.energyAtpAmpkPathwayClosed E.torC1PhosphorylationClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse