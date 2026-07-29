import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.List.Basic
import Mathlib.Data.String.Basic

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure WorkEntry where
  title : String
  author : String
  year : Nat
  publication : String
  abstract : String
  internalizedClosure : Prop

structure WorkCompilationPackage where
  entries : List WorkEntry
  compilationKey : String
  compilationHash : String
  totalWorks : Nat
  classificationMap : String -> Option String

def WorkCompilationClosure (W : WorkCompilationPackage) : Prop :=
  W.totalWorks = List.length W.entries ∧
  (∀ e : WorkEntry, e ∈ W.entries → e.internalizedClosure)

theorem work_compilation_closure_from_package (W : WorkCompilationPackage) :
  WorkCompilationClosure W := by
  refine And.intro ?_ ?_
  · rfl
  · intro e he
    exact e.internalizedClosure

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
