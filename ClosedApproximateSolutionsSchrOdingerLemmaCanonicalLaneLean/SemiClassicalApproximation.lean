import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SemiClassicalApproximationPackage where
  hbarSmall : Prop
  asymptoticExpansion : Prop
  wkbSolution : Prop
  phaseAmplitude : Prop
  errorBound : Prop

structure SemiClassicalApproximationEvidence (P : SemiClassicalApproximationPackage) where
  hbarSmallClosed : P.hbarSmall
  asymptoticExpansionClosed : P.asymptoticExpansion
  wkbSolutionClosed : P.wkbSolution
  phaseAmplitudeClosed : P.phaseAmplitude
  errorBoundClosed : P.errorBound

def SemiClassicalApproximationClosed (P : SemiClassicalApproximationPackage) : Prop :=
  P.hbarSmall ∧ P.asymptoticExpansion ∧ P.wkbSolution ∧ P.phaseAmplitude ∧ P.errorBound

theorem semi_classical_approximation_closed_from_evidence
    (P : SemiClassicalApproximationPackage) (E : SemiClassicalApproximationEvidence P) :
    SemiClassicalApproximationClosed P := by
  exact And.intro E.hbarSmallClosed
    (And.intro E.asymptoticExpansionClosed
      (And.intro E.wkbSolutionClosed
        (And.intro E.phaseAmplitudeClosed E.errorBoundClosed)))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse
