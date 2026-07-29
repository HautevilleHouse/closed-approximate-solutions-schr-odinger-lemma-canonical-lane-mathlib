import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ApproximationErrorControl (A : ApproximateSolutionSpace) where
  errorOperator : Type u
  spectralBound : ℕ
  errorTolerance : ℕ
  errorBoundSatisfied : Prop
  spectralGapCondition : Prop
  errorReductionFactor : ℕ
  convergenceRate : Prop

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse