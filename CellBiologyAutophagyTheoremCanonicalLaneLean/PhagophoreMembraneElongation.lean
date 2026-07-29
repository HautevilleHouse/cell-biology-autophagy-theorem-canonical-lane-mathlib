import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyAutophagyTheoremCanonicalLaneLean

structure PhagophoreMembraneElongationPackage where
  atg9VesicleTrafficking : Prop
  pi3pDomainGeneration : Prop
  wipiProteinRecruitment : Prop
  atg2Atg18LipidTransfer : Prop

structure PhagophoreMembraneElongationEvidence (P : PhagophoreMembraneElongationPackage) where
  atg9VesicleTraffickingClosed : P.atg9VesicleTrafficking
  pi3pDomainGenerationClosed : P.pi3pDomainGeneration
  wipiProteinRecruitmentClosed : P.wipiProteinRecruitment
  atg2Atg18LipidTransferClosed : P.atg2Atg18LipidTransfer

def PhagophoreMembraneElongationClosed (P : PhagophoreMembraneElongationPackage) : Prop :=
  P.atg9VesicleTrafficking ∧ P.pi3pDomainGeneration ∧
  P.wipiProteinRecruitment ∧ P.atg2Atg18LipidTransfer

theorem phagophore_membrane_elongation_closed_from_evidence
    (P : PhagophoreMembraneElongationPackage) (E : PhagophoreMembraneElongationEvidence P) :
    PhagophoreMembraneElongationClosed P := by
  exact And.intro E.atg9VesicleTraffickingClosed
    (And.intro E.pi3pDomainGenerationClosed
      (And.intro E.wipiProteinRecruitmentClosed E.atg2Atg18LipidTransferClosed))

end CellBiologyAutophagyTheoremCanonicalLaneLean
end HautevilleHouse