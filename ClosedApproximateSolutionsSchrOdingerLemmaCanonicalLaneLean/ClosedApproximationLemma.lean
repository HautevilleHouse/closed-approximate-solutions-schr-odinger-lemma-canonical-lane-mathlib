import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ClosedApproximationParameters where
  epsilon : ℝ
  epsilonPos : epsilon > 0
  approxOrder : ℕ
  stabilityFactor : ℝ
  stabilityPos : stabilityFactor > 0

structure ClosedSpectralGap where
  gapValue : ℝ
  gapPos : gapValue > 0
  spectrumCondition : Prop

structure ClosedApproximationLemma where
  parameters : ClosedApproximationParameters
  spectralGap : ClosedSpectralGap
  solutionSpace : ApproximateSolutionSpace
  closureProperty : Prop
  approximationBound : Prop
  stabilityGuarantee : Prop

structure ClosedApproximationLemmaEvidence (L : ClosedApproximationLemma) where
  closurePropertyClosed : L.closureProperty
  approximationBoundClosed : L.approximationBound
  stabilityGuaranteeClosed : L.stabilityGuarantee

def ClosedApproximationLemmaClosed (L : ClosedApproximationLemma) : Prop :=
  L.closureProperty ∧ L.approximationBound ∧ L.stabilityGuarantee

theorem closed_approximation_lemma_closed_from_evidence
    (L : ClosedApproximationLemma) (E : ClosedApproximationLemmaEvidence L) :
    ClosedApproximationLemmaClosed L := by
  exact And.intro E.closurePropertyClosed
    (And.intro E.approximationBoundClosed E.stabilityGuaranteeClosed)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse