import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean

structure EpithelialMesenchymalInteractionsPackage where
  inductiveSignals : Prop
  reciprocalRegulation : Prop
  basementMembraneRemodeling : Prop
  differentiationCues : Prop

structure EpithelialMesenchymalInteractionsEvidence (E : EpithelialMesenchymalInteractionsPackage) where
  inductiveSignalsClosed : E.inductiveSignals
  reciprocalRegulationClosed : E.reciprocalRegulation
  basementMembraneRemodelingClosed : E.basementMembraneRemodeling
  differentiationCuesClosed : E.differentiationCues

def EpithelialMesenchymalInteractionsClosed (E : EpithelialMesenchymalInteractionsPackage) : Prop :=
  E.inductiveSignals ∧ E.reciprocalRegulation ∧ E.basementMembraneRemodeling ∧ E.differentiationCues

theorem epithelial_mesenchymal_interactions_closed_from_evidence
    (E : EpithelialMesenchymalInteractionsPackage) (Ev : EpithelialMesenchymalInteractionsEvidence E) :
    EpithelialMesenchymalInteractionsClosed E := by
  exact And.intro Ev.inductiveSignalsClosed (And.intro Ev.reciprocalRegulationClosed (And.intro Ev.basementMembraneRemodelingClosed Ev.differentiationCuesClosed))

end DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse