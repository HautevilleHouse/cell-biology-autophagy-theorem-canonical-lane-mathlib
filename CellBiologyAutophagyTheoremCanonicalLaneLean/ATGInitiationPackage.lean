import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure ATGInitiationPackage where
  atg1Kinase : Type u
  ulkComplex : Type v
  stressSignal : Prop
  stressSignal_term : stressSignal
  phagophoreNucleated : Prop
  phagophoreNucleated_term : phagophoreNucleated

structure ATGInitiationEvidence (A : ATGInitiationPackage) where
  stressSignalClosed : A.stressSignal
  phagophoreNucleatedClosed : A.phagophoreNucleated

def ATGInitiationClosed (A : ATGInitiationPackage) : Prop :=
  A.stressSignal ∧ A.phagophoreNucleated

theorem atg_initiation_closed_from_evidence (A : ATGInitiationPackage) (E : ATGInitiationEvidence A) : ATGInitiationClosed A := by
  exact And.intro E.stressSignalClosed E.phagophoreNucleatedClosed

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse