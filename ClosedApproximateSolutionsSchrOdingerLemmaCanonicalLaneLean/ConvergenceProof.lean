import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ConvergenceProofPackage where
  approximateFamily : Type u
  targetSolution : Type v
  semiclassicalLimit : Prop
  normEstimate : Prop
  stability : Prop

structure ConvergenceProofEvidence (C : ConvergenceProofPackage) where
  approximateFamilyClosed : C.approximateFamily
  targetSolutionClosed : C.targetSolution
  semiclassicalLimitClosed : C.semiclassicalLimit
  normEstimateClosed : C.normEstimate
  stabilityClosed : C.stability

def ConvergenceProofClosed (C : ConvergenceProofPackage) : Prop :=
  C.approximateFamily ∧ C.targetSolution ∧ C.semiclassicalLimit ∧ C.normEstimate ∧ C.stability

theorem convergence_proof_closed_from_evidence
    (C : ConvergenceProofPackage) (E : ConvergenceProofEvidence C) :
    ConvergenceProofClosed C := by
  exact And.intro E.approximateFamilyClosed
    (And.intro E.targetSolutionClosed
      (And.intro E.semiclassicalLimitClosed
        (And.intro E.normEstimateClosed E.stabilityClosed)))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse
