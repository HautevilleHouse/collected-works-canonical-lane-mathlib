import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CollectedWorksManuscript where
  manuscriptId : String
  title : String
  author : String
  year : Nat
  field : String
  keyResults : List String

default instance : Inhabited CollectedWorksManuscript where
  default := { manuscriptId := "", title := "", author := "", year := 0, field := "", keyResults := [] }

end CollectedWorksCanonicalLaneLean
end HautevilleHouse