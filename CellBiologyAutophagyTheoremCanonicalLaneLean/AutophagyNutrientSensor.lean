import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyNutrientSensorPackage where
  ampkActivation : Prop
  mTorInhibition : Prop
  sirt1Activation : Prop
  transcriptionFactorNuclearTranslocation : Prop
  autophagyGeneExpression : Prop

structure AutophagyNutrientSensorEvidence (N : AutophagyNutrientSensorPackage) where
  ampkActivationClosed : N.ampkActivation
  mTorInhibitionClosed : N.mTorInhibition
  sirt1ActivationClosed : N.sirt1Activation
  transcriptionFactorNuclearTranslocationClosed : N.transcriptionFactorNuclearTranslocation
  autophagyGeneExpressionClosed : N.autophagyGeneExpression

def AutophagyNutrientSensorClosed (N : AutophagyNutrientSensorPackage) : Prop :=
  N.ampkActivation ∧ N.mTorInhibition ∧ N.sirt1Activation ∧
  N.transcriptionFactorNuclearTranslocation ∧ N.autophagyGeneExpression

theorem autophagy_nutrient_sensor_closed_from_evidence
    (N : AutophagyNutrientSensorPackage) (E : AutophagyNutrientSensorEvidence N) :
    AutophagyNutrientSensorClosed N := by
  exact And.intro E.ampkActivationClosed
    (And.intro E.mTorInhibitionClosed
      (And.intro E.sirt1ActivationClosed
        (And.intro E.transcriptionFactorNuclearTranslocationClosed
          E.autophagyGeneExpressionClosed)))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse