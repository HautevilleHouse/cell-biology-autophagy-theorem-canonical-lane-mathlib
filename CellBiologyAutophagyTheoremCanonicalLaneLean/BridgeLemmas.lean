import HautevilleHouse.CellBiologyAutophagyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutophagyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse