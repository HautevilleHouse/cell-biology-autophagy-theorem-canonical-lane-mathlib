import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure SignalingPackage where
  mtorc1Active : Prop
  ampkActive : Prop
  ulk1ComplexFormed : Prop
  beclin1Release : Prop
  activationCascade : Prop

structure SignalingEvidence (S : SignalingPackage) where
  mtorc1ActiveClosed : S.mtorc1Active
  ampkActiveClosed : S.ampkActive
  ulk1ComplexFormedClosed : S.ulk1ComplexFormed
  beclin1ReleaseClosed : S.beclin1Release
  activationCascadeClosed : S.activationCascade

def SignalingPackageClosed (S : SignalingPackage) : Prop :=
  S.mtorc1Active ∧ S.ampkActive ∧ S.ulk1ComplexFormed ∧ S.beclin1Release ∧ S.activationCascade

theorem signaling_closed_from_evidence (S : SignalingPackage) (E : SignalingEvidence S) :
    SignalingPackageClosed S := by
  exact And.intro E.mtorc1ActiveClosed
    (And.intro E.ampkActiveClosed
      (And.intro E.ulk1ComplexFormedClosed
        (And.intro E.beclin1ReleaseClosed E.activationCascadeClosed)))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse