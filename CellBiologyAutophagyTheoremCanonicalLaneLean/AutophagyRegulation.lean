import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyRegulationPackage where
  nutrientSensing : Prop
  stressResponse : Prop
  transcriptionalControl : Prop
  postTranslationalModification : Prop
  nutrientSensingClosed : nutrientSensing
  stressResponseClosed : stressResponse
  transcriptionalControlClosed : transcriptionalControl
  postTranslationalModificationClosed : postTranslationalModification

structure AutophagyRegulationEvidence (R : AutophagyRegulationPackage) where
  nutrientSensingClosed : R.nutrientSensing
  stressResponseClosed : R.stressResponse
  transcriptionalControlClosed : R.transcriptionalControl
  postTranslationalModificationClosed : R.postTranslationalModification

def AutophagyRegulationClosed (R : AutophagyRegulationPackage) : Prop :=
  R.nutrientSensing ∧ R.stressResponse ∧ R.transcriptionalControl ∧ R.postTranslationalModification

theorem autophagy_regulation_closed_from_evidence (R : AutophagyRegulationPackage) (E : AutophagyRegulationEvidence R) : AutophagyRegulationClosed R :=
  by
    exact And.intro E.nutrientSensingClosed
      (And.intro E.stressResponseClosed
        (And.intro E.transcriptionalControlClosed E.postTranslationalModificationClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse