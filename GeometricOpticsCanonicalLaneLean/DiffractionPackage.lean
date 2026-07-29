import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure DiffractionPackage {M : MaxwellEquationsPackage}
    {W : WaveEquationPackage M} where
  huygensFresnelPrinciple : Prop
  kirchhoffIntegralTheorem : Prop
  fresnelDiffraction : Prop
  fraunhoferDiffraction : Prop
  diffractionEfficiency : Prop

structure DiffractionEvidence {M : MaxwellEquationsPackage}
    {W : WaveEquationPackage M} (D : DiffractionPackage M W) where
  huygensFresnelPrincipleClosed : D.huygensFresnelPrinciple
  kirchhoffIntegralTheoremClosed : D.kirchhoffIntegralTheorem
  fresnelDiffractionClosed : D.fresnelDiffraction
  fraunhoferDiffractionClosed : D.fraunhoferDiffraction
  diffractionEfficiencyClosed : D.diffractionEfficiency

def DiffractionClosed {M : MaxwellEquationsPackage}
    {W : WaveEquationPackage M} (D : DiffractionPackage M W) : Prop :=
  D.huygensFresnelPrinciple ∧ D.kirchhoffIntegralTheorem ∧
  D.fresnelDiffraction ∧ D.fraunhoferDiffraction ∧ D.diffractionEfficiency

theorem diffraction_closed_from_evidence
    {M : MaxwellEquationsPackage} {W : WaveEquationPackage M}
    (D : DiffractionPackage M W) (E : DiffractionEvidence D) :
    DiffractionClosed D := by
  exact And.intro E.huygensFresnelPrincipleClosed
    (And.intro E.kirchhoffIntegralTheoremClosed
      (And.intro E.fresnelDiffractionClosed
        (And.intro E.fraunhoferDiffractionClosed E.diffractionEfficiencyClosed)))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
