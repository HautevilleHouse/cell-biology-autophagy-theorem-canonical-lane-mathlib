import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutophagyCanonicalLaneLean

structure MTORSignalingPackage {A : AutophagyPackage} where
  mtorComplex : Type u
  ampkComplex : Type v
  regulatoryInputs : Type w
  mtorActivityRegulated : Prop
  ampkActivityRegulated : Prop
  downstreamEffectors : Prop

structure MTORSignalingEvidence {A : AutophagyPackage} (M : MTORSignalingPackage A) where
  mtorActivityRegulatedClosed : M.mtorActivityRegulated
  ampkActivityRegulatedClosed : M.ampkActivityRegulated
  downstreamEffectorsClosed : M.downstreamEffectors

def MTORSignalingClosed {A : AutophagyPackage} (M : MTORSignalingPackage A) : Prop :=
  M.mtorActivityRegulated ∧ M.ampkActivityRegulated ∧ M.downstreamEffectors

theorem mtor_signaling_closed_from_evidence {A : AutophagyPackage} (M : MTORSignalingPackage A)
    (E : MTORSignalingEvidence M) : MTORSignalingClosed M := by
  exact And.intro E.mtorActivityRegulatedClosed
    (And.intro E.ampkActivityRegulatedClosed E.downstreamEffectorsClosed)

end AutophagyCanonicalLaneLean
end HautevilleHouse