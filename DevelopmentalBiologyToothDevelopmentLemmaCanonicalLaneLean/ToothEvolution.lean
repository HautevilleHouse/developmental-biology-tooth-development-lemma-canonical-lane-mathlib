import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean

structure ToothEvolutionPackage where
  toothReplacement : Prop
  heterodonty : Prop
  toothCrownMorphology : Prop
  toothReplacementClosed : toothReplacement
  heterodontyClosed : heterodonty
  toothCrownMorphologyClosed : toothCrownMorphology

def ToothEvolutionClosed (E : ToothEvolutionPackage) : Prop :=
  E.toothReplacement ∧ E.heterodonty ∧ E.toothCrownMorphology

theorem tooth_evolution_closed_from_evidence
    (E : ToothEvolutionPackage) : ToothEvolutionClosed E := by
  exact And.intro E.toothReplacementClosed
    (And.intro E.heterodontyClosed E.toothCrownMorphologyClosed)

end DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
