import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SchrOdingerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SchrOdingerAdmittedObject where
  space : SchrOdingerSpace
  potentialSmooth : Prop
  approximateSolutionExists : Prop
  targetSpace : Type
  targetTopology : TopologicalSpace targetSpace
  admitsClosedApproximateSolution : Prop
  conclusion : admitsClosedApproximateSolution

def SchrOdingerWitnessClosed (O : SchrOdingerAdmittedObject) : Prop :=
  O.admitsClosedApproximateSolution

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse