import canonicalLaneMathlib.AdmissibleClass
import CollectedWorksCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CollectedWorksCanonicalLaneLean
end HautevilleHouse