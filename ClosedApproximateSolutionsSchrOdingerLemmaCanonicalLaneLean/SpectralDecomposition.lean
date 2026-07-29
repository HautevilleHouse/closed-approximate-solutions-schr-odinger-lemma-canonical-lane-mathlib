import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SpectralData where
  eigenvalueSequence : ℕ → ℝ
  eigenfunctionBasis : Set (ℕ → ℂ)
  orthonormalBasis : Prop
  completeness : Prop
  spectralMeasure : Prop

structure SpectralDecomposition where
  spectralData : SpectralData
  decompositionProperty : Prop
  subspaceChain : Prop
  invariantSubspaces : Prop
  spectralGap : ClosedSpectralGap

structure SpectralEvidence (D : SpectralDecomposition) where
  decompositionPropertyClosed : D.decompositionProperty
  subspaceChainClosed : D.subspaceChain
  invariantSubspacesClosed : D.invariantSubspaces

def SpectralDecompositionClosed (D : SpectralDecomposition) : Prop :=
  D.decompositionProperty ∧ D.subspaceChain ∧ D.invariantSubspaces

theorem spectral_decomposition_closed_from_evidence
    (D : SpectralDecomposition) (E : SpectralEvidence D) :
    SpectralDecompositionClosed D := by
  exact And.intro E.decompositionPropertyClosed
    (And.intro E.subspaceChainClosed E.invariantSubspacesClosed)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse