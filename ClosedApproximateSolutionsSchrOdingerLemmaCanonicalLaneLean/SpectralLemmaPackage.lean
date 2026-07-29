import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean

structure SpectralLemmaPackage where
  operator : Type
  spectrum : Type
  spectralGap : Prop
  discreteSpectrum : Prop
  eigenfunctionExpansion : Prop

structure SpectralLemmaEvidence (L : SpectralLemmaPackage) where
  operatorClosed : L.operator ≠ ()
  spectralGapClosed : L.spectralGap
  discreteSpectrumClosed : L.discreteSpectrum
  eigenfunctionExpansionClosed : L.eigenfunctionExpansion

def SpectralLemmaClosed (L : SpectralLemmaPackage) : Prop :=
  L.spectralGap ∧ L.discreteSpectrum ∧ L.eigenfunctionExpansion

theorem spectral_lemma_closed_from_evidence (L : SpectralLemmaPackage) (E : SpectralLemmaEvidence L) :
    SpectralLemmaClosed L := by
  exact And.intro E.spectralGapClosed (And.intro E.discreteSpectrumClosed E.eigenfunctionExpansionClosed)

end ClosedApproximateSolutionsSchrOdingerLemmaCanonicalLaneLean
end HautevilleHouse