import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyCell where
  carrier : Type
  membrane : Prop
  cytosol : Prop
  lysosome : Prop
  autophagosome : Prop

structure AutophagyAdmittedObject where
  cell : AutophagyCell
  autophagyInduced : Prop
  degradationComplete : Prop
  conclusion : degradationComplete

structure AutophagyEndgameState where
  object : AutophagyAdmittedObject

def AutophagyWitnessClosed (O : AutophagyAdmittedObject) : Prop :=
  O.degradationComplete

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse
