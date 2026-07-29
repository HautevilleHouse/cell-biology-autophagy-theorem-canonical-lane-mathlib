import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagySignalingPackage where
  torComplexActivation : Prop
  ampkMtorCrosstalk : Prop
  ulkComplexAssembly : Prop
  beclin1Vps34Complex : Prop
  atgConjugationSystems : Prop
  lysosomeBiogenesis : Prop
  torComplexActivationClosed : torComplexActivation
  ampkMtorCrosstalkClosed : ampkMtorCrosstalk
  ulkComplexAssemblyClosed : ulkComplexAssembly
  beclin1Vps34ComplexClosed : beclin1Vps34Complex
  atgConjugationSystemsClosed : atgConjugationSystems
  lysosomeBiogenesisClosed : lysosomeBiogenesis

structure AutophagySignalingEvidence (A : AutophagySignalingPackage) where
  torComplexActivationClosed : A.torComplexActivation
  ampkMtorCrosstalkClosed : A.ampkMtorCrosstalk
  ulkComplexAssemblyClosed : A.ulkComplexAssembly
  beclin1Vps34ComplexClosed : A.beclin1Vps34Complex
  atgConjugationSystemsClosed : A.atgConjugationSystems
  lysosomeBiogenesisClosed : A.lysosomeBiogenesis

def AutophagySignalingClosed (A : AutophagySignalingPackage) : Prop :=
  A.torComplexActivation ∧ A.ampkMtorCrosstalk ∧ A.ulkComplexAssembly ∧ A.beclin1Vps34Complex ∧ A.atgConjugationSystems ∧ A.lysosomeBiogenesis

theorem autophagy_signaling_closed_from_evidence (A : AutophagySignalingPackage) (E : AutophagySignalingEvidence A) : AutophagySignalingClosed A :=
  by
    exact And.intro E.torComplexActivationClosed
      (And.intro E.ampkMtorCrosstalkClosed
        (And.intro E.ulkComplexAssemblyClosed
          (And.intro E.beclin1Vps34ComplexClosed
            (And.intro E.atgConjugationSystemsClosed E.lysosomeBiogenesisClosed))))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse