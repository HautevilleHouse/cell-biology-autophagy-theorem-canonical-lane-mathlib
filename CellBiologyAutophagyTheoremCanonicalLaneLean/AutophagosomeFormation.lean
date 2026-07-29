import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagosomeFormationPackage where
  phagophoreNucleation : Prop
  membraneExpansion : Prop
  atg9Cycling : Prop
  closureFusion : Prop
  phagophoreNucleationClosed : phagophoreNucleation
  membraneExpansionClosed : membraneExpansion
  atg9CyclingClosed : atg9Cycling
  closureFusionClosed : closureFusion

structure AutophagosomeFormationEvidence (F : AutophagosomeFormationPackage) where
  phagophoreNucleationClosed : F.phagophoreNucleation
  membraneExpansionClosed : F.membraneExpansion
  atg9CyclingClosed : F.atg9Cycling
  closureFusionClosed : F.closureFusion

def AutophagosomeFormationClosed (F : AutophagosomeFormationPackage) : Prop :=
  F.phagophoreNucleation ∧ F.membraneExpansion ∧ F.atg9Cycling ∧ F.closureFusion

theorem autophagosome_formation_closed_from_evidence (F : AutophagosomeFormationPackage) (E : AutophagosomeFormationEvidence F) : AutophagosomeFormationClosed F :=
  by
    exact And.intro E.phagophoreNucleationClosed
      (And.intro E.membraneExpansionClosed
        (And.intro E.atg9CyclingClosed E.closureFusionClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse