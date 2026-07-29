import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure AtiyahSingerFamily where
  familyOfOperators : Type u
  analyticIndexFamily : Prop
  topologicalIndexFamily : Prop
  indexFamilyEquality : Prop
  curvatureIntegral : Prop

structure AtiyahSingerFamilyEvidence (F : AtiyahSingerFamily) where
  analyticIndexFamilyClosed : F.analyticIndexFamily
  topologicalIndexFamilyClosed : F.topologicalIndexFamily
  indexFamilyEqualityClosed : F.indexFamilyEquality
  curvatureIntegralClosed : F.curvatureIntegral

def AtiyahSingerFamilyClosed (F : AtiyahSingerFamily) : Prop :=
  F.analyticIndexFamily ∧ F.topologicalIndexFamily ∧ F.indexFamilyEquality ∧ F.curvatureIntegral

theorem atiyah_singer_family_closed_from_evidence (F : AtiyahSingerFamily) (E : AtiyahSingerFamilyEvidence F) :
    AtiyahSingerFamilyClosed F := by
  exact And.intro E.analyticIndexFamilyClosed (And.intro E.topologicalIndexFamilyClosed (And.intro E.indexFamilyEqualityClosed E.curvatureIntegralClosed))

end CollectedWorksCanonicalLaneLean
end HautevilleHouse