import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CharacteristicClass where
  bundle : ManifoldBundle
  cohomologyClass : Type u
  characteristicPolynomial : Prop
  vesbtstoffDefined : Prop
  chernClassComputed : Prop

structure CharacteristicClassEvidence (C : CharacteristicClass) where
  characteristicPolynomialClosed : C.characteristicPolynomial
  vesbtstoffDefinedClosed : C.vesbtstoffDefined
  chernClassComputedClosed : C.chernClassComputed

def CharacteristicClassClosed (C : CharacteristicClass) : Prop :=
  C.characteristicPolynomial ∧ C.vesbtstoffDefined ∧ C.chernClassComputed

theorem characteristic_class_closed_from_evidence (C : CharacteristicClass) (E : CharacteristicClassEvidence C) :
    CharacteristicClassClosed C := by
  exact And.intro E.characteristicPolynomialClosed (And.intro E.vesbtstoffDefinedClosed E.chernClassComputedClosed)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse