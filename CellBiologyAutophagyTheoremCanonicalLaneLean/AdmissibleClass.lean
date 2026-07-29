import HautevilleHouse.CellBiologyAutophagyTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AutophagyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AutophagyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse