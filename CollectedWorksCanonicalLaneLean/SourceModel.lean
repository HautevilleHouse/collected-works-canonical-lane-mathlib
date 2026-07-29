import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollectedWorksCanonicalLaneLean

structure SourceModel where
  sourceLanguage : String
  declarations : Nat
  imports : List String
  structuralCompleteness : Prop

def SourceModelClosed (S : SourceModel) : Prop :=
  S.structuralCompleteness

theorem source_model_closed (S : SourceModel) : SourceModelClosed S :=
  S.structuralCompleteness

end CollectedWorksCanonicalLaneLean
end HautevilleHouse
