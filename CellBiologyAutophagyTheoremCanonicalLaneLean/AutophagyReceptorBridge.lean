import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyReceptorBridge where
  receptor : Type u
  cargo : Type v
  receptorRecognizesCargo : Prop
  receptorRecognizesCargo_term : receptorRecognizesCargo
  bridged : Prop
  bridged_term : bridged

def bridgeClosed (A : AdmissibleClass) : Prop := A.object.carrier

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.carrier_term

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse