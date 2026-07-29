import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean.ApproximateSolutionSpace

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SchrOdingerOperator (S : ApproximateSolutionSpace) where
  domain : S.carrier → Prop
  action : S.carrier → ℂ
  selfAdjoint : Prop
  spectrumCompact : Prop
  resolventSet : Prop

structure SchrOdingerOperatorEvidence {S : ApproximateSolutionSpace} (H : SchrOdingerOperator S) where
  domainClosed : H.domain
  actionClosed : H.action
  selfAdjointClosed : H.selfAdjoint
  spectrumCompactClosed : H.spectrumCompact
  resolventSetClosed : H.resolventSet

def SchrOdingerOperatorClosed {S : ApproximateSolutionSpace} (H : SchrOdingerOperator S) : Prop :=
  H.domain ∧ H.action ∧ H.selfAdjoint ∧ H.spectrumCompact ∧ H.resolventSet

theorem schrodinger_operator_closed_from_evidence {S : ApproximateSolutionSpace} (H : SchrOdingerOperator S) (E : SchrOdingerOperatorEvidence H) : SchrOdingerOperatorClosed H := by
  exact And.intro E.domainClosed (And.intro E.actionClosed (And.intro E.selfAdjointClosed (And.intro E.spectrumCompactClosed E.resolventSetClosed)))

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse