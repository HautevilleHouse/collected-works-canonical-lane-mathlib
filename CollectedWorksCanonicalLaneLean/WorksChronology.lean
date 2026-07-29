import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure WorksChronology where
  works : List CollectedObject
  chronologicalOrder : Prop
  thematicCoherence : Prop

def WorksChronologyClosed (c : WorksChronology) : Prop :=
  c.chronologicalOrder ∧ c.thematicCoherence

theorem works_chronology_closed (c : WorksChronology) : WorksChronologyClosed c := by
  exact And.intro c.chronologicalOrder c.thematicCoherence

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
