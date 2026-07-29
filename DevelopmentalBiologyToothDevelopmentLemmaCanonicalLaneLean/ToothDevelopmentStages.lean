import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean

structure ToothDevelopmentStagesPackage where
  budStage : Prop
  capStage : Prop
  bellStage : Prop
  morphogenesisCompleted : Prop

structure ToothDevelopmentStagesEvidence (P : ToothDevelopmentStagesPackage) where
  budStageClosed : P.budStage
  capStageClosed : P.capStage
  bellStageClosed : P.bellStage
  morphogenesisCompletedClosed : P.morphogenesisCompleted

def ToothDevelopmentStagesClosed (P : ToothDevelopmentStagesPackage) : Prop :=
  P.budStage ∧ P.capStage ∧ P.bellStage ∧ P.morphogenesisCompleted

theorem tooth_development_stages_closed_from_evidence
    (P : ToothDevelopmentStagesPackage) (E : ToothDevelopmentStagesEvidence P) :
    ToothDevelopmentStagesClosed P := by
  exact And.intro E.budStageClosed (And.intro E.capStageClosed (And.intro E.bellStageClosed E.morphogenesisCompletedClosed))

end DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse