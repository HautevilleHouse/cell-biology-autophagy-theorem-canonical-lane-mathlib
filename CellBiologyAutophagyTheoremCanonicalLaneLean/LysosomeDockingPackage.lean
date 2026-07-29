import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure LysosomeDockingPackage where
  lysosome : Type u
  autophagosome : Type v
  dockingComplex : Type w
  fusionCompetent : Prop
  fusionCompetent_term : fusionCompetent
  docked : Prop
  docked_term : docked

structure LysosomeDockingEvidence (L : LysosomeDockingPackage) where
  fusionCompetentClosed : L.fusionCompetent
  dockedClosed : L.docked

def LysosomeDockingClosed (L : LysosomeDockingPackage) : Prop :=
  L.fusionCompetent ∧ L.docked

theorem lysosome_docking_closed_from_evidence (L : LysosomeDockingPackage) (E : LysosomeDockingEvidence L) : LysosomeDockingClosed L := by
  exact And.intro E.fusionCompetentClosed E.dockedClosed

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse