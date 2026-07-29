import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure WaveEquationPackage where
  scalarWaveEquation : Prop
  phaseVelocityDefined : Prop
  dispersionRelation : Prop
  helmholtzEquation : Prop
  boundaryCondition : Prop

structure WaveEquationEvidence (W : WaveEquationPackage) where
  scalarWaveEquationClosed : W.scalarWaveEquation
  phaseVelocityDefinedClosed : W.phaseVelocityDefined
  dispersionRelationClosed : W.dispersionRelation
  helmholtzEquationClosed : W.helmholtzEquation
  boundaryConditionClosed : W.boundaryCondition

def WaveEquationClosed (W : WaveEquationPackage) : Prop :=
  W.scalarWaveEquation ∧ W.phaseVelocityDefined ∧ W.dispersionRelation ∧
  W.helmholtzEquation ∧ W.boundaryCondition

theorem wave_equation_closed_from_evidence (W : WaveEquationPackage)
    (E : WaveEquationEvidence W) : WaveEquationClosed W :=
  And.intro E.scalarWaveEquationClosed
    (And.intro E.phaseVelocityDefinedClosed
      (And.intro E.dispersionRelationClosed
        (And.intro E.helmholtzEquationClosed E.boundaryConditionClosed)))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse