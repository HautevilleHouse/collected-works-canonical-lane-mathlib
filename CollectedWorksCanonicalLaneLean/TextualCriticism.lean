import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure TextualCriticismPackage where
  variantReadings : List String
  lemmaCount : Nat
  apparatusCriticus : Prop
  stemmaCodicum : Prop

structure TextualCriticismEvidence (T : TextualCriticismPackage) where
  variantReadingsNonEmpty : T.variantReadings ≠ []
  lemmaCountClosed : T.lemmaCount > 0
  apparatusCriticusClosed : T.apparatusCriticus
  stemmaCodicumClosed : T.stemmaCodicum

def TextualCriticismClosed (T : TextualCriticismPackage) : Prop :=
  T.variantReadings ≠ [] ∧ T.lemmaCount > 0 ∧ T.apparatusCriticus ∧ T.stemmaCodicum

theorem textual_criticism_closed_from_evidence (T : TextualCriticismPackage) (E : TextualCriticismEvidence T) :
    TextualCriticismClosed T := by
  exact And.intro E.variantReadingsNonEmpty (And.intro E.lemmaCountClosed (And.intro E.apparatusCriticusClosed E.stemmaCodicumClosed))

end CollectedWorksCanonicalLaneLean
end HautevilleHouse