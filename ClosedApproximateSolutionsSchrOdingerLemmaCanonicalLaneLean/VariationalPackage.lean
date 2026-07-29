import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure VariationalPackage where
  functional : Type
  domain : Type
  criticalPoint : Prop
  minimizer : Prop
  eulerLagrange : Prop

structure VariationalEvidence (V : VariationalPackage) where
  functionalDefined : V.functional ≠ ()
  domainDefined : V.domain ≠ ()
  criticalPointClosed : V.criticalPoint
  minimizerClosed : V.minimizer
  eulerLagrangeClosed : V.eulerLagrange

def VariationalClosed (V : VariationalPackage) : Prop :=
  V.criticalPoint ∧ V.minimizer ∧ V.eulerLagrange

theorem variational_closed_from_evidence (V : VariationalPackage) (E : VariationalEvidence V) :
    VariationalClosed V := by
  exact And.intro E.criticalPointClosed (And.intro E.minimizerClosed E.eulerLagrangeClosed)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse