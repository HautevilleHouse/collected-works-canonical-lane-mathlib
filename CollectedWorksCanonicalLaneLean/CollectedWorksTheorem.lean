import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CollectedWorksTheorem where
  theoremId : String
  statement : String
  proofOutline : String
  manuscript : CollectedWorksManuscript
  isCanonical : Prop

definition defaultTheorem : CollectedWorksTheorem := {
  theoremId := "",
  statement := "",
  proofOutline := "",
  manuscript := default,
  isCanonical := False
}

end CollectedWorksCanonicalLaneLean
end HautevilleHouse