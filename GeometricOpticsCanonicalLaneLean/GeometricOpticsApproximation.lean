import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure GeometricOpticsApproximationPackage {M : MaxwellEquationsPackage}
    {W : WaveEquationPackage M} where
  wavelengthSmall : Prop
  eikonalEquation : Prop
  rayEquation : Prop
  intensityTransport : Prop
  phaseFunction : Type u

structure GeometricOpticsApproximationEvidence {M : MaxwellEquationsPackage}
    {W : WaveEquationPackage M} (G : GeometricOpticsApproximationPackage M W) where
  wavelengthSmallClosed : G.wavelengthSmall
  eikonalEquationClosed : G.eikonalEquation
  rayEquationClosed : G.rayEquation
  intensityTransportClosed : G.intensityTransport

def GeometricOpticsApproximationClosed {M : MaxwellEquationsPackage}
    {W : WaveEquationPackage M} (G : GeometricOpticsApproximationPackage M W) : Prop :=
  G.wavelengthSmall ∧ G.eikonalEquation ∧ G.rayEquation ∧ G.intensityTransport

theorem geometric_optics_approximation_closed_from_evidence
    {M : MaxwellEquationsPackage} {W : WaveEquationPackage M}
    (G : GeometricOpticsApproximationPackage M W)
    (E : GeometricOpticsApproximationEvidence G) : GeometricOpticsApproximationClosed G := by
  exact And.intro E.wavelengthSmallClosed
    (And.intro E.eikonalEquationClosed
      (And.intro E.rayEquationClosed E.intensityTransportClosed))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
