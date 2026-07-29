import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure SourceAttributionPackage where
  primarySources : List String
  secondarySources : List String
  archivalReferences : List String
  attributionMethod : Prop

structure SourceAttributionEvidence (S : SourceAttributionPackage) where
  primarySourcesNonEmpty : S.primarySources ≠ []
  secondarySourcesNonEmpty : S.secondarySources ≠ []
  archivalReferencesNonEmpty : S.archivalReferences ≠ []
  attributionMethodClosed : S.attributionMethod

def SourceAttributionClosed (S : SourceAttributionPackage) : Prop :=
  S.primarySources ≠ [] ∧ S.secondarySources ≠ [] ∧ S.archivalReferences ≠ [] ∧ S.attributionMethod

theorem source_attribution_closed_from_evidence (S : SourceAttributionPackage) (E : SourceAttributionEvidence S) :
    SourceAttributionClosed S := by
  exact And.intro E.primarySourcesNonEmpty (And.intro E.secondarySourcesNonEmpty (And.intro E.archivalReferencesNonEmpty E.attributionMethodClosed))

end CollectedWorksCanonicalLaneLean
end HautevilleHouse