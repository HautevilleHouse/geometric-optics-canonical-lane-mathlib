import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricOpticsCanonicalLaneLean.WaveOptics

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure GeometricOpticsPackage (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) where
  rayOpticsModel : Prop
  fermatPrinciple : Prop
  snellLaw : Prop
  lensEquation : Prop
  aberrationTheory : Prop

structure GeometricOpticsEvidence (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) (G : GeometricOpticsPackage M W) where
  rayOpticsModelClosed : G.rayOpticsModel
  fermatPrincipleClosed : G.fermatPrinciple
  snellLawClosed : G.snellLaw
  lensEquationClosed : G.lensEquation
  aberrationTheoryClosed : G.aberrationTheory

def GeometricOpticsClosed (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) (G : GeometricOpticsPackage M W) : Prop :=
  G.rayOpticsModel ∧ G.fermatPrinciple ∧ G.snellLaw ∧
  G.lensEquation ∧ G.aberrationTheory

theorem geometric_optics_closed_from_evidence (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) (G : GeometricOpticsPackage M W)
    (E : GeometricOpticsEvidence M W G) : GeometricOpticsClosed M W G := by
  exact And.intro E.rayOpticsModelClosed
    (And.intro E.fermatPrincipleClosed
      (And.intro E.snellLawClosed
        (And.intro E.lensEquationClosed E.aberrationTheoryClosed)))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
