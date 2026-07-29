import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure SelectiveAutophagyCargoRecognitionPackage where
  ubiquitinSignalMarking : Prop
  adaptorProteinBinding : Prop
  lc3Interaction : Prop
  cargoReceptorNetwork : Prop

structure SelectiveAutophagyCargoRecognitionEvidence (S : SelectiveAutophagyCargoRecognitionPackage) where
  ubiquitinSignalMarkingClosed : S.ubiquitinSignalMarking
  adaptorProteinBindingClosed : S.adaptorProteinBinding
  lc3InteractionClosed : S.lc3Interaction
  cargoReceptorNetworkClosed : S.cargoReceptorNetwork

def SelectiveAutophagyCargoRecognitionClosed (S : SelectiveAutophagyCargoRecognitionPackage) : Prop :=
  S.ubiquitinSignalMarking ∧ S.adaptorProteinBinding ∧
  S.lc3Interaction ∧ S.cargoReceptorNetwork

theorem selective_autophagy_cargo_recognition_closed_from_evidence
    (S : SelectiveAutophagyCargoRecognitionPackage) (E : SelectiveAutophagyCargoRecognitionEvidence S) :
    SelectiveAutophagyCargoRecognitionClosed S := by
  exact And.intro E.ubiquitinSignalMarkingClosed
    (And.intro E.adaptorProteinBindingClosed
      (And.intro E.lc3InteractionClosed E.cargoReceptorNetworkClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse