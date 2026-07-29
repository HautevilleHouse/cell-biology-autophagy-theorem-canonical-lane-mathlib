import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure CargoRecognitionPackage where
  ubiquitinSignal : Prop
  receptorMediated : Prop
  lc3GabrapInteraction : Prop
  selectiveAutophagy : Prop
  ubiquitinSignalClosed : ubiquitinSignal
  receptorMediatedClosed : receptorMediated
  lc3GabrapInteractionClosed : lc3GabrapInteraction
  selectiveAutophagyClosed : selectiveAutophagy

structure CargoRecognitionEvidence (C : CargoRecognitionPackage) where
  ubiquitinSignalClosed : C.ubiquitinSignal
  receptorMediatedClosed : C.receptorMediated
  lc3GabrapInteractionClosed : C.lc3GabrapInteraction
  selectiveAutophagyClosed : C.selectiveAutophagy

def CargoRecognitionClosed (C : CargoRecognitionPackage) : Prop :=
  C.ubiquitinSignal ∧ C.receptorMediated ∧ C.lc3GabrapInteraction ∧ C.selectiveAutophagy

theorem cargo_recognition_closed_from_evidence (C : CargoRecognitionPackage) (E : CargoRecognitionEvidence C) : CargoRecognitionClosed C :=
  by
    exact And.intro E.ubiquitinSignalClosed
      (And.intro E.receptorMediatedClosed
        (And.intro E.lc3GabrapInteractionClosed E.selectiveAutophagyClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse