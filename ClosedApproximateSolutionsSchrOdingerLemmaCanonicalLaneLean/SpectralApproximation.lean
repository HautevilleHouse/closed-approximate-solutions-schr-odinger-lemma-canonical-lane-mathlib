import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.SchrOdingerOperator

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SpectralApproximation (S : ApproximateSolutionSpace) (H : SchrOdingerOperator S) where
  closureError : ℝ
  residualBound : ℝ
  convergenceRate : ℝ
  approximationScheme : Prop
  errorAnalysis : Prop

structure SpectralApproximationEvidence {S : ApproximateSolutionSpace} {H : SchrOdingerOperator S} (A : SpectralApproximation S H) where
  approximationSchemeClosed : A.approximationScheme
  errorAnalysisClosed : A.errorAnalysis

def SpectralApproximationClosed {S : ApproximateSolutionSpace} {H : SchrOdingerOperator S} (A : SpectralApproximation S H) : Prop :=
  A.approximationScheme ∧ A.errorAnalysis

theorem spectral_approximation_closed_from_evidence {S : ApproximateSolutionSpace} {H : SchrOdingerOperator S} (A : SpectralApproximation S H) (E : SpectralApproximationEvidence A) : SpectralApproximationClosed A := by
  exact And.intro E.approximationSchemeClosed E.errorAnalysisClosed

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse