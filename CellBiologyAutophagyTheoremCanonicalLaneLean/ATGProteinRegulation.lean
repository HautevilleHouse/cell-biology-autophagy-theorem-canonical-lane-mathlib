import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure ATGProteinRegulationPackage where
  atg1ComplexActivation : Prop
  atg9VesicleNucleation : Prop
  atg12ConjugationSystem : Prop
  atg8Lipidation : Prop
  cargoReceptorInteraction : Prop

structure ATGProteinRegulationEvidence (A : ATGProteinRegulationPackage) where
  atg1ComplexActivationClosed : A.atg1ComplexActivation
  atg9VesicleNucleationClosed : A.atg9VesicleNucleation
  atg12ConjugationSystemClosed : A.atg12ConjugationSystem
  atg8LipidationClosed : A.atg8Lipidation
  cargoReceptorInteractionClosed : A.cargoReceptorInteraction

def ATGProteinRegulationClosed (A : ATGProteinRegulationPackage) : Prop :=
  A.atg1ComplexActivation ∧ A.atg9VesicleNucleation ∧ A.atg12ConjugationSystem ∧ A.atg8Lipidation ∧ A.cargoReceptorInteraction

theorem atg_protein_regulation_closed_from_evidence
    (A : ATGProteinRegulationPackage) (E : ATGProteinRegulationEvidence A) :
    ATGProteinRegulationClosed A := by
  exact And.intro E.atg1ComplexActivationClosed
    (And.intro E.atg9VesicleNucleationClosed
      (And.intro E.atg12ConjugationSystemClosed
        (And.intro E.atg8LipidationClosed E.cargoReceptorInteractionClosed)))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse