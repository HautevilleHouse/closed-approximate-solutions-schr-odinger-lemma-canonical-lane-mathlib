import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.ApproximateSolutionSpace
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.SchrOdingerOperator
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.ApproximateEigenvalueLemma
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.SpectralApproximation

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ClosureCertificate (S : ApproximateSolutionSpace) (H : SchrOdingerOperator S) (L : ApproximateEigenvalueLemma S) (A : SpectralApproximation S H) where
  spaceClosed : ApproximateSolutionClosed S
  operatorClosed : SchrOdingerOperatorClosed H
  lemmaClosed : ApproximateEigenvalueLemmaClosed L
  approximationClosed : SpectralApproximationClosed A

def ConstrainedSchrOdingerClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem constrained_schrodinger_endgame (A : AdmissibleClass) : ConstrainedSchrOdingerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse