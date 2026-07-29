import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ConvergenceRate where
  order : ℕ
  exponent : ℝ
  constant : ℝ
  asymptotic : Prop

structure ApproximationSequence where
  sequence : ℕ → ApproximateSolution
  limitPoint : ApproximateSolution
  convergence : Prop
  rate : ConvergenceRate

structure ConvergenceAnalysis where
  sequence : ApproximationSequence
  errorEstimates : Prop
  stabilityUnderPerturbations : Prop
  spectralConvergence : Prop
  closureInFunctionSpace : Prop

structure ConvergenceEvidence (C : ConvergenceAnalysis) where
  errorEstimatesClosed : C.errorEstimates
  stabilityUnderPerturbationsClosed : C.stabilityUnderPerturbations
  spectralConvergenceClosed : C.spectralConvergence
  closureInFunctionSpaceClosed : C.closureInFunctionSpace

def ConvergenceAnalysisClosed (C : ConvergenceAnalysis) : Prop :=
  C.errorEstimates ∧ C.stabilityUnderPerturbations ∧
  C.spectralConvergence ∧ C.closureInFunctionSpace

theorem convergence_analysis_closed_from_evidence
    (C : ConvergenceAnalysis) (E : ConvergenceEvidence C) :
    ConvergenceAnalysisClosed C := by
  exact And.intro E.errorEstimatesClosed
    (And.intro E.stabilityUnderPerturbationsClosed
      (And.intro E.spectralConvergenceClosed E.closureInFunctionSpaceClosed))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse