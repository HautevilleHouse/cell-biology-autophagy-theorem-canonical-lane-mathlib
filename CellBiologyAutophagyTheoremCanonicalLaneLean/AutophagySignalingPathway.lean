import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagySignalingPathwayPackage where
  inductionSignal : Prop
  nucleation : Prop
  elongation : Prop
  closure : Prop
  fusionWithLysosome : Prop
  degradation : Prop

structure AutophagySignalingPathwayEvidence (P : AutophagySignalingPathwayPackage) where
  inductionSignalClosed : P.inductionSignal
  nucleationClosed : P.nucleation
  elongationClosed : P.elongation
  closureClosed : P.closure
  fusionWithLysosomeClosed : P.fusionWithLysosome
  degradationClosed : P.degradation

def AutophagySignalingPathwayClosed (P : AutophagySignalingPathwayPackage) : Prop :=
  P.inductionSignal ∧ P.nucleation ∧ P.elongation ∧ P.closure ∧ P.fusionWithLysosome ∧ P.degradation

theorem autophagy_signaling_pathway_closed_from_evidence
    (P : AutophagySignalingPathwayPackage) (E : AutophagySignalingPathwayEvidence P) :
    AutophagySignalingPathwayClosed P := by
  exact And.intro E.inductionSignalClosed
    (And.intro E.nucleationClosed
      (And.intro E.elongationClosed
        (And.intro E.closureClosed
          (And.intro E.fusionWithLysosomeClosed E.degradationClosed))))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse