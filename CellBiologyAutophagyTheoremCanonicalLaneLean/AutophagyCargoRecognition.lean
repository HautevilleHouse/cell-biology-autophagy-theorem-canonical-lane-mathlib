import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyCargo where
  protein : Type
  ubiquitinationState : Prop
  degradationSignal : Prop

structure AutophagyReceptor where
  lirDomain : Prop
  ubiquitinBindingDomain : Prop

structure CargoRecognitionPackage (C : AutophagyCargo) (R : AutophagyReceptor) where
  receptorBindsCargo : Prop
  lirInteraction : Prop
  selectiveAutophagy : Prop

structure CargoRecognitionEvidence {C : AutophagyCargo} {R : AutophagyReceptor} (P : CargoRecognitionPackage C R) where
  receptorBindsCargoClosed : P.receptorBindsCargo
  lirInteractionClosed : P.lirInteraction
  selectiveAutophagyClosed : P.selectiveAutophagy

def CargoRecognitionClosed {C : AutophagyCargo} {R : AutophagyReceptor} (P : CargoRecognitionPackage C R) : Prop :=
  P.receptorBindsCargo ∧ P.lirInteraction ∧ P.selectiveAutophagy

theorem cargo_recognition_closed_from_evidence {C : AutophagyCargo} {R : AutophagyReceptor} (P : CargoRecognitionPackage C R) (E : CargoRecognitionEvidence P) : CargoRecognitionClosed P := by
  exact And.intro E.receptorBindsCargoClosed (And.intro E.lirInteractionClosed E.selectiveAutophagyClosed)

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse