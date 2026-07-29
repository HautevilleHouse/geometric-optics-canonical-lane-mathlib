import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure MetamaterialsPackage where
  negativeRefractiveIndex : Prop
  effectiveMediumTheory : Prop
  superlensResolution : Prop
  transformationOptics : Prop

structure MetamaterialsEvidence (M : MetamaterialsPackage) where
  negativeRefractiveIndexClosed : M.negativeRefractiveIndex
  effectiveMediumTheoryClosed : M.effectiveMediumTheory
  superlensResolutionClosed : M.superlensResolution
  transformationOpticsClosed : M.transformationOptics

def MetamaterialsClosed (M : MetamaterialsPackage) : Prop :=
  M.negativeRefractiveIndex ∧ M.effectiveMediumTheory ∧ M.superlensResolution ∧ M.transformationOptics

theorem metamaterials_closed_from_evidence (M : MetamaterialsPackage)
    (E : MetamaterialsEvidence M) : MetamaterialsClosed M := by
  exact And.intro E.negativeRefractiveIndexClosed
    (And.intro E.effectiveMediumTheoryClosed
      (And.intro E.superlensResolutionClosed E.transformationOpticsClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse