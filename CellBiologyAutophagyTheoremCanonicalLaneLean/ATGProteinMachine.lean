import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure ATGProteinMachinePackage where
  initiationComplex : Prop
  conjugationSystem : Prop
  lipidConjugation : Prop
  autophagosomeMembrane : Prop
  cargoReceptor : Prop
  atg8Family : Prop

structure ATGProteinMachineEvidence (M : ATGProteinMachinePackage) where
  initiationComplexClosed : M.initiationComplex
  conjugationSystemClosed : M.conjugationSystem
  lipidConjugationClosed : M.lipidConjugation
  autophagosomeMembraneClosed : M.autophagosomeMembrane
  cargoReceptorClosed : M.cargoReceptor
  atg8FamilyClosed : M.atg8Family

def ATGProteinMachineClosed (M : ATGProteinMachinePackage) : Prop :=
  M.initiationComplex ∧ M.conjugationSystem ∧ M.lipidConjugation ∧ M.autophagosomeMembrane ∧ M.cargoReceptor ∧ M.atg8Family

theorem atg_protein_machine_closed_from_evidence
    (M : ATGProteinMachinePackage) (E : ATGProteinMachineEvidence M) :
    ATGProteinMachineClosed M := by
  exact And.intro E.initiationComplexClosed
    (And.intro E.conjugationSystemClosed
      (And.intro E.lipidConjugationClosed
        (And.intro E.autophagosomeMembraneClosed
          (And.intro E.cargoReceptorClosed E.atg8FamilyClosed))))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse