import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure ApproxSolutionClass where
  solutionType : Type u
  approximationOrder : Nat
  governingPDE : Prop
  schrOdingerOperator : Prop
  boundaryControlled : Prop
  remainderEstimates : Prop

structure ApproxSolutionEvidence (C : ApproxSolutionClass) where
  governingPDEClosed : C.governingPDE
  schrOdingerOperatorClosed : C.schrOdingerOperator
  boundaryControlledClosed : C.boundaryControlled
  remainderEstimatesClosed : C.remainderEstimates

def ApproxSolutionClosed (C : ApproxSolutionClass) : Prop :=
  C.governingPDE ∧ C.schrOdingerOperator ∧ C.boundaryControlled ∧ C.remainderEstimates

theorem approx_solution_closed_from_evidence (C : ApproxSolutionClass) (E : ApproxSolutionEvidence C) :
    ApproxSolutionClosed C := by
  exact And.intro E.governingPDEClosed (And.intro E.schrOdingerOperatorClosed (And.intro E.boundaryControlledClosed E.remainderEstimatesClosed))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse