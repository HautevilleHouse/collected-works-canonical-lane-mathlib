import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperator : Type u
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  ellipticOperatorClosed : I.ellipticOperator
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.ellipticOperator ∧ I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.ellipticOperatorClosed (And.intro E.analyticIndexClosed (And.intro E.topologicalIndexClosed E.indexEqualityClosed))

end CollectedWorksCanonicalLaneLean
end HautevilleHouse