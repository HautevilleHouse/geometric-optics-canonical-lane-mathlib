import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure MetamaterialsPackage where
  effectivePermittivity : Type u
  effectivePermeability : Type v
  negativeRefraction : Prop
  superlensEffect : Prop
  cloaking : Prop

structure MetamaterialsEvidence (M : MetamaterialsPackage) where
  negativeRefractionClosed : M.negativeRefraction
  superlensEffectClosed : M.superlensEffect
  cloakingClosed : M.cloaking

def MetamaterialsClosed (M : MetamaterialsPackage) : Prop :=
  M.negativeRefraction ∧ M.superlensEffect ∧ M.cloaking

theorem metamaterials_closed_from_evidence
    (M : MetamaterialsPackage) (E : MetamaterialsEvidence M) :
    MetamaterialsClosed M := by
  exact And.intro E.negativeRefractionClosed
    (And.intro E.superlensEffectClosed E.cloakingClosed)

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
