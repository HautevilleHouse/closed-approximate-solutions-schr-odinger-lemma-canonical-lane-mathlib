import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.ApproximateSolutionSpace

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ApproximateEigenvalueLemma (S : ApproximateSolutionSpace) where
  approximateEigenvalue : S.carrier → ℂ → Prop
  lowerBound : ℝ
  upperBound : ℝ
  approximationError : ℝ
  eigenvalueExists : Prop
  eigenvalueIsApproximate : Prop

structure ApproximateEigenvalueLemmaEvidence {S : ApproximateSolutionSpace} (L : ApproximateEigenvalueLemma S) where
  eigenvalueExistsClosed : L.eigenvalueExists
  eigenvalueIsApproximateClosed : L.eigenvalueIsApproximate

def ApproximateEigenvalueLemmaClosed {S : ApproximateSolutionSpace} (L : ApproximateEigenvalueLemma S) : Prop :=
  L.eigenvalueExists ∧ L.eigenvalueIsApproximate

theorem approximate_eigenvalue_lemma_closed_from_evidence {S : ApproximateSolutionSpace} (L : ApproximateEigenvalueLemma S) (E : ApproximateEigenvalueLemmaEvidence L) : ApproximateEigenvalueLemmaClosed L := by
  exact And.intro E.eigenvalueExistsClosed E.eigenvalueIsApproximateClosed

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse