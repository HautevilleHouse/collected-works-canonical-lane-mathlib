import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CollectedWorksCanonicalLaneLean.WorkCompilation

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure BibliographyBridgePackage {W : WorkCompilationPackage} where
  bridgeKey : String
  bridgeHash : String
  bibliographyClosed : Prop
  citationNetworkAxiomatized : Prop

def BibliographyBridgeClosed {W : WorkCompilationPackage} (B : BibliographyBridgePackage W) : Prop :=
  B.bibliographyClosed ∧ B.citationNetworkAxiomatized

theorem bibliography_bridge_closure {W : WorkCompilationPackage} (B : BibliographyBridgePackage W) :
  BibliographyBridgeClosed B := by
  exact And.intro B.bibliographyClosed B.citationNetworkAxiomatized

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
