import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CollectedWorksPackage where
  documentSet : List String
  centralResults : Prop
  citations : Prop
  bibliographyComplete : Prop

def CollectedWorksClosed (P : CollectedWorksPackage) : Prop :=
  P.centralResults ∧ P.citations ∧ P.bibliographyComplete

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
