import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure ChronologicalOrderingPackage where
  worksOrderedByDate : List (String × Nat)
  overlapsResolved : Prop
  datingEvidenceSummarized : Prop

structure ChronologicalOrderingEvidence (C : ChronologicalOrderingPackage) where
  worksOrderedNonEmpty : C.worksOrderedByDate ≠ []
  datesSorted : ∀ (i j : Nat), i < j → i < C.worksOrderedByDate.length → j < C.worksOrderedByDate.length → (C.worksOrderedByDate.get? i).bind (λ x => (C.worksOrderedByDate.get? j).map (λ y => x.2 ≤ y.2)) = some true
  overlapsResolvedClosed : C.overlapsResolved
  datingEvidenceSummarizedClosed : C.datingEvidenceSummarized

def ChronologicalOrderingClosed (C : ChronologicalOrderingPackage) : Prop :=
  C.worksOrderedByDate ≠ [] ∧ C.overlapsResolved ∧ C.datingEvidenceSummarized

theorem chronological_ordering_closed_from_evidence (C : ChronologicalOrderingPackage) (E : ChronologicalOrderingEvidence C) :
    ChronologicalOrderingClosed C := by
  exact And.intro E.worksOrderedNonEmpty (And.intro E.overlapsResolvedClosed E.datingEvidenceSummarizedClosed)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse