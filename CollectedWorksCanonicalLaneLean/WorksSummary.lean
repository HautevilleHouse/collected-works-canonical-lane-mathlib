import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure WorksSummaryPackage where
  collectedDocuments : List String
  totalPages : Nat
  earliestPublicationYear : Nat
  latestPublicationYear : Nat
  includesAnnotatedEditions : Bool
  editorialNotesCount : Nat

structure WorksSummaryEvidence (W : WorksSummaryPackage) where
  collectedDocumentsClosed : W.collectedDocuments.length > 0
  totalPagesClosed : W.totalPages > 0
  chronologyClosed : W.earliestPublicationYear ≤ W.latestPublicationYear
  annotatedEditionsClosed : W.includesAnnotatedEditions → W.editorialNotesCount > 0

def WorksSummaryClosed (W : WorksSummaryPackage) : Prop :=
  W.collectedDocuments.length > 0 ∧ W.totalPages > 0 ∧
  W.earliestPublicationYear ≤ W.latestPublicationYear ∧
  (W.includesAnnotatedEditions → W.editorialNotesCount > 0)

theorem works_summary_closed_from_evidence (W : WorksSummaryPackage) (E : WorksSummaryEvidence W) :
    WorksSummaryClosed W := by
  exact And.intro E.collectedDocumentsClosed (And.intro E.totalPagesClosed (And.intro E.chronologyClosed E.annotatedEditionsClosed))

end CollectedWorksCanonicalLaneLean
end HautevilleHouse