import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyAutophagyTheoremCanonicalLaneLean.AutophagyReceptorBridge
import HautevilleHouse.CellBiologyAutophagyTheoremCanonicalLaneLean.ProteinRecruitmentGate

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

def ConstrainedAutophagyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_autophagy_endgame (A : AdmissibleClass) : ConstrainedAutophagyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse