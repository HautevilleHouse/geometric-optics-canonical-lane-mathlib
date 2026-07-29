import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure WaveEquationPackage where
  waveEquation : Prop
  helmholtzEquation : Prop
  boundaryConditions : Prop
  initialConditions : Prop

structure WaveEquationEvidence (W : WaveEquationPackage) where
  waveEquationClosed : W.waveEquation
  helmholtzEquationClosed : W.helmholtzEquation
  boundaryConditionsClosed : W.boundaryConditions
  initialConditionsClosed : W.initialConditions

def WaveEquationClosed (W : WaveEquationPackage) : Prop :=
  W.waveEquation ∧ W.helmholtzEquation ∧ W.boundaryConditions ∧ W.initialConditions

theorem wave_equation_closed_from_evidence (W : WaveEquationPackage)
    (E : WaveEquationEvidence W) : WaveEquationClosed W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.helmholtzEquationClosed
      (And.intro E.boundaryConditionsClosed E.initialConditionsClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse