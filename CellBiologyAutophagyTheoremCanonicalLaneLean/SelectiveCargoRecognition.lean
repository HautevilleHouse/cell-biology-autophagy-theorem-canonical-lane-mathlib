import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure SelectiveCargoRecognition where
  cargo : Type u
  receptor : Type v
  recognitionBinding : Prop
  recognitionBinding_term : recognitionBinding
  cargoRapidlyDegraded : Prop
  cargoRapidlyDegraded_term : cargoRapidlyDegraded

structure SelectiveCargoEvidence (S : SelectiveCargoRecognition) where
  recognitionBindingClosed : S.recognitionBinding
  cargoRapidlyDegradedClosed : S.cargoRapidlyDegraded

def SelectiveCargoClosed (S : SelectiveCargoRecognition) : Prop :=
  S.recognitionBinding ∧ S.cargoRapidlyDegraded

theorem selective_cargo_closed_from_evidence (S : SelectiveCargoRecognition) (E : SelectiveCargoEvidence S) : SelectiveCargoClosed S := by
  exact And.intro E.recognitionBindingClosed E.cargoRapidlyDegradedClosed

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse