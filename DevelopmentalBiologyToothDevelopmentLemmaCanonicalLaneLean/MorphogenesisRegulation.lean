import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean

structure MorphogenesisRegulationPackage where
  placodeFormation : Prop
  budCapTransition : Prop
  crownRootPatterning : Prop
  placodeFormationClosed : placodeFormation
  budCapTransitionClosed : budCapTransition
  crownRootPatterningClosed : crownRootPatterning

def MorphogenesisRegulationClosed (M : MorphogenesisRegulationPackage) : Prop :=
  M.placodeFormation ∧ M.budCapTransition ∧ M.crownRootPatterning

theorem morphogenesis_regulation_closed_from_evidence
    (M : MorphogenesisRegulationPackage) : MorphogenesisRegulationClosed M := by
  exact And.intro M.placodeFormationClosed
    (And.intro M.budCapTransitionClosed M.crownRootPatterningClosed)

end DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
