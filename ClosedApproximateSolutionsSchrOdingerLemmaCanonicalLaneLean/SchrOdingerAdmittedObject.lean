import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SchrOdingerSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure SchrOdingerAdmittedObject where
  space : SchrOdingerSpace
  solution : space.carrier → ℂ
  approximate : Prop
  closedUnderEvolution : Prop
  conclusion : approximate ∧ closedUnderEvolution

def ApproxSolutionClosed (O : SchrOdingerAdmittedObject) : Prop :=
  O.approximate ∧ O.closedUnderEvolution

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse