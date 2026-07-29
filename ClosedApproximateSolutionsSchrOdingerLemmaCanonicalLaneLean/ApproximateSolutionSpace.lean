import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ApproximateSolutionSpace where
  baseHilbertSpace : Type u
  innerProduct : Type v
  norm : Type w
  approximateLevel : ℕ
  approxParameter : ℕ
  domain : Type x
  domainTopology : TopologicalSpace domain
  hamiltonianOperator : Type y
  evolutionTime : Type z
  innerProductDefined : Prop
  normDefined : Prop
  approxLevelFinite : Prop
  hamiltonianSelfAdjoint : Prop
  approximateSolutionExists : Prop

def ApproximateSolutionSpaceClosed (A : ApproximateSolutionSpace) : Prop :=
  A.innerProductDefined ∧ A.normDefined ∧ A.approxLevelFinite ∧
  A.hamiltonianSelfAdjoint ∧ A.approximateSolutionExists

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse