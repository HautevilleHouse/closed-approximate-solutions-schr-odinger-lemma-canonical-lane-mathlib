import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SchrodingerEquationPackage (A : ApproximateSolutionSpace) where
  waveFunction : A.domain → ℂ
  timeDerivative : Type u
  hamiltonianAction : Type v
  equationSatisfied : Prop
  wellPosedness : Prop
  approximateSolutionError : ℕ
  errorBound : Prop

def SchrodingerEquationPackageClosed (A : ApproximateSolutionSpace)
    (S : SchrodingerEquationPackage A) : Prop :=
  S.equationSatisfied ∧ S.wellPosedness ∧ S.errorBound

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse