import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure RiemannRochPackage where
  surface : Type u
  divisor : Type v
  genus : ℕ
  dimensionOfSpace : ℕ
  riemannRochFormula : Prop

structure RiemannRochEvidence (R : RiemannRochPackage) where
  genusClosed : R.genus
  dimensionOfSpaceClosed : R.dimensionOfSpace
  riemannRochFormulaClosed : R.riemannRochFormula

def RiemannRochClosed (R : RiemannRochPackage) : Prop :=
  R.genus ∧ R.dimensionOfSpace ∧ R.riemannRochFormula

theorem riemann_roch_closed_from_evidence (R : RiemannRochPackage) (E : RiemannRochEvidence R) :
    RiemannRochClosed R := by
  exact And.intro E.genusClosed (And.intro E.dimensionOfSpaceClosed E.riemannRochFormulaClosed)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse