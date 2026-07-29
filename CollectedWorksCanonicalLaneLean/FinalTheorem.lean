import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollectedWorksCanonicalLaneLean.WorkCompilation
import HautevilleHouse.CollectedWorksCanonicalLaneLean.BibliographyBridge

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

def CollectedWorksConstrainedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem collected_works_endgame (A : AdmissibleClass) :
  CollectedWorksConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
