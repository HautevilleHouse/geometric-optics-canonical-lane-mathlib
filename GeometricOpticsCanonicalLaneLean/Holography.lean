import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure HolographyPackage where
  interferencePattern : Prop
  reconstruction : Prop
  resolutionLimit : Prop
  phaseInformation : Prop

structure HolographyEvidence (H : HolographyPackage) where
  interferencePatternClosed : H.interferencePattern
  reconstructionClosed : H.reconstruction
  resolutionLimitClosed : H.resolutionLimit
  phaseInformationClosed : H.phaseInformation

def HolographyClosed (H : HolographyPackage) : Prop :=
  H.interferencePattern ∧ H.reconstruction ∧ H.resolutionLimit ∧ H.phaseInformation

theorem holography_closed_from_evidence (H : HolographyPackage)
    (E : HolographyEvidence H) : HolographyClosed H := by
  exact And.intro E.interferencePatternClosed
    (And.intro E.reconstructionClosed
      (And.intro E.resolutionLimitClosed E.phaseInformationClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse