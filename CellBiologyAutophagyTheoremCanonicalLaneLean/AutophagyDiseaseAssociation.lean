import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure AutophagyDiseaseAssociationPackage where
  neurodegenerativeDiseaseLink : Prop
  cancerMetabolismLink : Prop
  infectiousDiseaseLink : Prop
  metabolicDisorderLink : Prop
  cardiovascularDiseaseLink : Prop
  immuneRegulationLink : Prop

structure AutophagyDiseaseAssociationEvidence (D : AutophagyDiseaseAssociationPackage) where
  neurodegenerativeDiseaseLinkClosed : D.neurodegenerativeDiseaseLink
  cancerMetabolismLinkClosed : D.cancerMetabolismLink
  infectiousDiseaseLinkClosed : D.infectiousDiseaseLink
  metabolicDisorderLinkClosed : D.metabolicDisorderLink
  cardiovascularDiseaseLinkClosed : D.cardiovascularDiseaseLink
  immuneRegulationLinkClosed : D.immuneRegulationLink

def AutophagyDiseaseAssociationClosed (D : AutophagyDiseaseAssociationPackage) : Prop :=
  D.neurodegenerativeDiseaseLink ∧ D.cancerMetabolismLink ∧ D.infectiousDiseaseLink ∧ D.metabolicDisorderLink ∧ D.cardiovascularDiseaseLink ∧ D.immuneRegulationLink

theorem autophagy_disease_association_closed_from_evidence
    (D : AutophagyDiseaseAssociationPackage) (E : AutophagyDiseaseAssociationEvidence D) :
    AutophagyDiseaseAssociationClosed D := by
  exact And.intro E.neurodegenerativeDiseaseLinkClosed
    (And.intro E.cancerMetabolismLinkClosed
      (And.intro E.infectiousDiseaseLinkClosed
        (And.intro E.metabolicDisorderLinkClosed
          (And.intro E.cardiovascularDiseaseLinkClosed E.immuneRegulationLinkClosed))))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse