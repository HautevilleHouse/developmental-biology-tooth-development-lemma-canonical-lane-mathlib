import DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ToothWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyToothDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
