import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutophagyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion A.object.property1 A.object.property2 A.object.property3

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse