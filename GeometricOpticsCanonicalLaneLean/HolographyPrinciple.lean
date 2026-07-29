import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure HolographyPackage where
  referenceWaveDefined : Prop
  objectWaveScattered : Prop
  interferencePatternRecorded : Prop
  reconstructionIllumination : Prop
  imageReconstruction : Prop

structure HolographyEvidence (H : HolographyPackage) where
  referenceWaveDefinedClosed : H.referenceWaveDefined
  objectWaveScatteredClosed : H.objectWaveScattered
  interferencePatternRecordedClosed : H.interferencePatternRecorded
  reconstructionIlluminationClosed : H.reconstructionIllumination
  imageReconstructionClosed : H.imageReconstruction

def HolographyClosed (H : HolographyPackage) : Prop :=
  H.referenceWaveDefined ∧ H.objectWaveScattered ∧
  H.interferencePatternRecorded ∧ H.reconstructionIllumination ∧ H.imageReconstruction

theorem holography_closed_from_evidence (H : HolographyPackage)
    (E : HolographyEvidence H) : HolographyClosed H :=
  And.intro E.referenceWaveDefinedClosed
    (And.intro E.objectWaveScatteredClosed
      (And.intro E.interferencePatternRecordedClosed
        (And.intro E.reconstructionIlluminationClosed E.imageReconstructionClosed)))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse