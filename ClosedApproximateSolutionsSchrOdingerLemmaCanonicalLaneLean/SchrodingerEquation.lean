import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SchrodingerData where
  stateSpace : Type u
  hamiltonian : stateSpace → ℝ
  timeParameter : Type v
  waveFunction : timeParameter → stateSpace → ℂ
  initialCondition : waveFunction 0 = λ _ => (0 : ℂ)

structure SchrodingerEquation where
  data : SchrodingerData
  equationSatisfied : Prop
  approximateSolutionSpace : ApproximateSolutionSpace
  timeEvolution : Prop
  energyConservation : Prop

structure SchrodingerEvidence (S : SchrodingerEquation) where
  equationSatisfiedClosed : S.equationSatisfied
  timeEvolutionClosed : S.timeEvolution
  energyConservationClosed : S.energyConservation

def SchrodingerClosed (S : SchrodingerEquation) : Prop :=
  S.equationSatisfied ∧ S.timeEvolution ∧ S.energyConservation

theorem schrodinger_closed_from_evidence (S : SchrodingerEquation)
    (E : SchrodingerEvidence S) : SchrodingerClosed S := by
  exact And.intro E.equationSatisfiedClosed
    (And.intro E.timeEvolutionClosed E.energyConservationClosed)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse