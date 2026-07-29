import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CollectedObject where
  label : String
  entry : BibTeXEntry
  mainResult : Prop
  proofOutline : Prop
  remarks : Prop

def CollectedObjectClosed (o : CollectedObject) : Prop :=
  o.mainResult ∧ o.proofOutline ∧ o.remarks

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
