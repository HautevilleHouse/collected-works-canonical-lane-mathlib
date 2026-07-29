import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure EditorialAnnotationsPackage where
  annotationCount : Nat
  footnotesCount : Nat
  crossReferences : List String
  textualVariants : List String

structure EditorialAnnotationsEvidence (A : EditorialAnnotationsPackage) where
  annotationCountClosed : A.annotationCount > 0
  footnotesCountClosed : A.footnotesCount > 0
  crossReferencesNonEmpty : A.crossReferences ≠ []
  textualVariantsRecorded : True

def EditorialAnnotationsClosed (A : EditorialAnnotationsPackage) : Prop :=
  A.annotationCount > 0 ∧ A.footnotesCount > 0 ∧ A.crossReferences ≠ []

theorem editorial_annotations_closed_from_evidence (A : EditorialAnnotationsPackage) (E : EditorialAnnotationsEvidence A) :
    EditorialAnnotationsClosed A := by
  exact And.intro E.annotationCountClosed (And.intro E.footnotesCountClosed E.crossReferencesNonEmpty)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse