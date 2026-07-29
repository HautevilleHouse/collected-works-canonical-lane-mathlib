import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure BibTeXEntry where
  citationKey : String
  author : String
  title : String
  journal : String
  year : Nat
  pages : String
  doi : Option String
  abstract : Option String

def citationFromEntry (e : BibTeXEntry) : String :=
  e.author ++ ", " ++ e.title ++ ", " ++ e.journal ++ " (" ++ toString e.year ++ "), " ++ e.pages

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
