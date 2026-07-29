import canonicalLaneMathlib.AdmissibleClass
import CollectedWorksCanonicalLaneLean.WorksSummary
import CollectedWorksCanonicalLaneLean.EditorialAnnotations
import CollectedWorksCanonicalLaneLean.TextualCriticism
import CollectedWorksCanonicalLaneLean.ChronologicalOrdering
import CollectedWorksCanonicalLaneLean.SourceAttribution

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

def ConstrainedWorksClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_works_endgame (A : AdmissibleClass) : ConstrainedWorksClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse