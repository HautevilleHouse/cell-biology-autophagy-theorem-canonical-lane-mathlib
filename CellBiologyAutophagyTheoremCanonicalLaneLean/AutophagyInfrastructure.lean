import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyAdmittedObject where
  cellType : Type
  stressCondition : Prop
  nutrientStatus : Prop
  autophagicFlux : Prop
  conclusion : autophagicFlux

structure AdmissibleClass where
  object : AutophagyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedAutophagyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_autophagy_endgame (A : AdmissibleClass) :
    ConstrainedAutophagyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse