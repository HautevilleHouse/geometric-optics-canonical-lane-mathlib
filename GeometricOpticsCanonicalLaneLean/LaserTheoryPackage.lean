import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure LaserTheoryPackage where
  populationInversion : Prop
  stimulatedEmission : Prop
  opticalResonator : Prop
  gainMedium : Prop
  laserThreshold : Prop

structure LaserTheoryEvidence (L : LaserTheoryPackage) where
  populationInversionClosed : L.populationInversion
  stimulatedEmissionClosed : L.stimulatedEmission
  opticalResonatorClosed : L.opticalResonator
  gainMediumClosed : L.gainMedium
  laserThresholdClosed : L.laserThreshold

def LaserTheoryClosed (L : LaserTheoryPackage) : Prop :=
  L.populationInversion ∧ L.stimulatedEmission ∧
  L.opticalResonator ∧ L.gainMedium ∧ L.laserThreshold

theorem laser_theory_closed_from_evidence
    (L : LaserTheoryPackage) (E : LaserTheoryEvidence L) :
    LaserTheoryClosed L := by
  exact And.intro E.populationInversionClosed
    (And.intro E.stimulatedEmissionClosed
      (And.intro E.opticalResonatorClosed
        (And.intro E.gainMediumClosed E.laserThresholdClosed)))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
