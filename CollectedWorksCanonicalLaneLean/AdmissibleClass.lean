import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure AdmissibleClass where
  object : CollectedWorksTheorem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  True

end CollectedWorksCanonicalLaneLean
end HautevilleHouse