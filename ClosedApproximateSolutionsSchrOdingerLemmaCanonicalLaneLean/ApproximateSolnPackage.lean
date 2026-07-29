import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ApproximateSolnPackage where
  approximationParameter : Type
  approximationLevel : Nat
  soln : Type
  approximateEquation : Prop
  errorBound : Prop
  convergence : Prop

structure ApproximateSolnEvidence (C : ApproximateSolnPackage) where
  approximationLevelDefined : C.approximationLevel = 1
  solnConstructed : C.soln
  approximateEquationClosed : C.approximateEquation
  errorBoundClosed : C.errorBound
  convergenceClosed : C.convergence

def ApproximateSolnClosed (C : ApproximateSolnPackage) : Prop :=
  C.approximateEquation ∧ C.errorBound ∧ C.convergence

theorem approximate_soln_closed_from_evidence (C : ApproximateSolnPackage) (E : ApproximateSolnEvidence C) :
    ApproximateSolnClosed C := by
  exact And.intro E.approximateEquationClosed (And.intro E.errorBoundClosed E.convergenceClosed)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse