import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  displacementField : Type w
  magneticInduction : Type x
  chargeDensity : Prop
  currentDensity : Prop
  gaussLaw : Prop
  gaussMagnetism : Prop
  faradayLaw : Prop
  ampereMaxwellLaw : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  gaussLawClosed : M.gaussLaw
  gaussMagnetismClosed : M.gaussMagnetism
  faradayLawClosed : M.faradayLaw
  ampereMaxwellLawClosed : M.ampereMaxwellLaw

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.gaussLaw ∧ M.gaussMagnetism ∧ M.faradayLaw ∧ M.ampereMaxwellLaw

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence M) : MaxwellEquationsClosed M := by
  exact And.intro E.gaussLawClosed
    (And.intro E.gaussMagnetismClosed
      (And.intro E.faradayLawClosed E.ampereMaxwellLawClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
