import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure DiffractionTheoryPackage where
  huygensFresnelPrinciple : Prop
  fresnelDiffraction : Prop
  fraunhoferDiffraction : Prop
  kirchhoffIntegral : Prop

structure DiffractionTheoryEvidence (D : DiffractionTheoryPackage) where
  huygensFresnelPrincipleClosed : D.huygensFresnelPrinciple
  fresnelDiffractionClosed : D.fresnelDiffraction
  fraunhoferDiffractionClosed : D.fraunhoferDiffraction
  kirchhoffIntegralClosed : D.kirchhoffIntegral

def DiffractionTheoryClosed (D : DiffractionTheoryPackage) : Prop :=
  D.huygensFresnelPrinciple ∧ D.fresnelDiffraction ∧ D.fraunhoferDiffraction ∧ D.kirchhoffIntegral

theorem diffraction_theory_closed_from_evidence (D : DiffractionTheoryPackage)
    (E : DiffractionTheoryEvidence D) : DiffractionTheoryClosed D := by
  exact And.intro E.huygensFresnelPrincipleClosed
    (And.intro E.fresnelDiffractionClosed
      (And.intro E.fraunhoferDiffractionClosed E.kirchhoffIntegralClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse