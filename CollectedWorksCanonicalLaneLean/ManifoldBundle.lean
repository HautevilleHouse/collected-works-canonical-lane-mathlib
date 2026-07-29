import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure ManifoldBundle where
  base : Type u
  fiber : Type v
  projection : base → fiber
  smoothStructure : Prop
  bundleIsManifold : Prop
  projectionSmooth : Prop

structure ManifoldBundleEvidence (M : ManifoldBundle) where
  smoothStructureClosed : M.smoothStructure
  bundleIsManifoldClosed : M.bundleIsManifold
  projectionSmoothClosed : M.projectionSmooth

def ManifoldBundleClosed (M : ManifoldBundle) : Prop :=
  M.smoothStructure ∧ M.bundleIsManifold ∧ M.projectionSmooth

theorem manifold_bundle_closed_from_evidence (M : ManifoldBundle) (E : ManifoldBundleEvidence M) :
    ManifoldBundleClosed M := by
  exact And.intro E.smoothStructureClosed (And.intro E.bundleIsManifoldClosed E.projectionSmoothClosed)

end CollectedWorksCanonicalLaneLean
end HautevilleHouse