import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure CohomologyRing (R : Type u) where
  manifold : ManifoldBundle
  ringStructure : Type v
  gradedComponents : Type w
  poincareDuality : Prop
  cupProductDefined : Prop

structure CohomologyRingEvidence {R : Type u} (C : CohomologyRing R) where
  poincareDualityClosed : C.poincareDuality
  cupProductDefinedClosed : C.cupProductDefined

def CohomologyRingClosed {R : Type u} (C : CohomologyRing R) : Prop :=
  C.poincareDuality ∧ C.cupProductDefined

theorem cohomology_ring_closed_from_evidence {R : Type u} (C : CohomologyRing R) (E : CohomologyRingEvidence C) :
    CohomologyRingClosed C := by
  exact And.intro E.poincareDualityClosed E.cupProductDefinedClosed

end CollectedWorksCanonicalLaneLean
end HautevilleHouse