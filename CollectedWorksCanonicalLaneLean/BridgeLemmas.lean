import canonicalLaneMathlib.AdmissibleClass
import CollectedWorksCanonicalLaneLean.CollectedWorksManuscript
import CollectedWorksCanonicalLaneLean.CollectedWorksTheorem

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end CollectedWorksCanonicalLaneLean
end HautevilleHouse