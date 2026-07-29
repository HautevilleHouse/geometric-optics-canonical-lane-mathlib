import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure HolographyPackage {D : DiffractionPackage} where
  interferenceRecording : Prop
  wavefrontReconstruction : Prop
  resolutionLimit : Prop
  phaseConjugation : Prop

structure HolographyEvidence {D : DiffractionPackage} (H : HolographyPackage D) where
  interferenceRecordingClosed : H.interferenceRecording
  wavefrontReconstructionClosed : H.wavefrontReconstruction
  resolutionLimitClosed : H.resolutionLimit
  phaseConjugationClosed : H.phaseConjugation

def HolographyClosed {D : DiffractionPackage} (H : HolographyPackage D) : Prop :=
  H.interferenceRecording ∧ H.wavefrontReconstruction ∧
  H.resolutionLimit ∧ H.phaseConjugation

theorem holography_closed_from_evidence
    {D : DiffractionPackage} (H : HolographyPackage D)
    (E : HolographyEvidence H) : HolographyClosed H := by
  exact And.intro E.interferenceRecordingClosed
    (And.intro E.wavefrontReconstructionClosed
      (And.intro E.resolutionLimitClosed E.phaseConjugationClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
