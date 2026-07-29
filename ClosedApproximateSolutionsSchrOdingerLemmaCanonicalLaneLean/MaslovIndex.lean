import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure MaslovIndexPackage where
  lagrangianSubmanifold : Prop
  causticPoints : Prop
  indexJump : Prop
  phaseCorrection : Prop
  uniformBounds : Prop

structure MaslovIndexEvidence (M : MaslovIndexPackage) where
  lagrangianSubmanifoldClosed : M.lagrangianSubmanifold
  causticPointsClosed : M.causticPoints
  indexJumpClosed : M.indexJump
  phaseCorrectionClosed : M.phaseCorrection
  uniformBoundsClosed : M.uniformBounds

def MaslovIndexClosed (M : MaslovIndexPackage) : Prop :=
  M.lagrangianSubmanifold ∧ M.causticPoints ∧ M.indexJump ∧ M.phaseCorrection ∧ M.uniformBounds

theorem maslov_index_closed_from_evidence
    (M : MaslovIndexPackage) (E : MaslovIndexEvidence M) :
    MaslovIndexClosed M := by
  exact And.intro E.lagrangianSubmanifoldClosed
    (And.intro E.causticPointsClosed
      (And.intro E.indexJumpClosed
        (And.intro E.phaseCorrectionClosed E.uniformBoundsClosed)))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse
