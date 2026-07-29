import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CollectedTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : Prop
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceRepository : String :=
  "collected-works-canonical-lane"

def sourceDescription : String :=
  "Canonical Collected Works Theorem Statement"

def sourceTheoremBoundary : String :=
  "classical boundary carried"

def baselineCertificateLane : String :=
  "manifold_constrained"

def sourceTheoremStatement : CollectedTheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := True
  , classicalBoundary := sourceTheoremBoundary
  , manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through collected works closure"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "classical source boundary carried"
  }

end CollectedWorksCanonicalLaneLean
end HautevilleHouse