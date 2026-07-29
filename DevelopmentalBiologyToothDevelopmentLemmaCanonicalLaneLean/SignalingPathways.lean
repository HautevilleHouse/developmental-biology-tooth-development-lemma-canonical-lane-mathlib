import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean

structure SignalingPathwaysPackage where
  bmpSignaling : Prop
  shhSignaling : Prop
  fgfSignaling : Prop
  wntSignaling : Prop
  bmpSignalingClosed : bmpSignaling
  shhSignalingClosed : shhSignaling
  fgfSignalingClosed : fgfSignaling
  wntSignalingClosed : wntSignaling

def SignalingPathwaysClosed (S : SignalingPathwaysPackage) : Prop :=
  S.bmpSignaling ∧ S.shhSignaling ∧ S.fgfSignaling ∧ S.wntSignaling

theorem signaling_pathways_closed_from_evidence
    (S : SignalingPathwaysPackage) : SignalingPathwaysClosed S := by
  exact And.intro S.bmpSignalingClosed
    (And.intro S.shhSignalingClosed
      (And.intro S.fgfSignalingClosed S.wntSignalingClosed))

end DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
