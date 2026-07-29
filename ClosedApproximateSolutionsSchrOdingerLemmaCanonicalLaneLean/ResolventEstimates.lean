import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ResolventOperator where
  underlyingOperator : Type u
  spectralParameter : ℂ
  resolventBound : ℝ
  boundedness : Prop
  continuity : Prop

structure ResolventEstimates where
  resolvent : ResolventOperator
  normEstimateOnDomain : Prop
  spectralMeasureEstimate : Prop
  uniformResolventBound : Prop
  resolventIdentity : Prop

structure ResolventEvidence (R : ResolventEstimates) where
  normEstimateOnDomainClosed : R.normEstimateOnDomain
  spectralMeasureEstimateClosed : R.spectralMeasureEstimate
  uniformResolventBoundClosed : R.uniformResolventBound
  resolventIdentityClosed : R.resolventIdentity

def ResolventEstimatesClosed (R : ResolventEstimates) : Prop :=
  R.normEstimateOnDomain ∧ R.spectralMeasureEstimate ∧
  R.uniformResolventBound ∧ R.resolventIdentity

theorem resolvent_estimates_closed_from_evidence
    (R : ResolventEstimates) (E : ResolventEvidence R) :
    ResolventEstimatesClosed R := by
  exact And.intro E.normEstimateOnDomainClosed
    (And.intro E.spectralMeasureEstimateClosed
      (And.intro E.uniformResolventBoundClosed E.resolventIdentityClosed))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse