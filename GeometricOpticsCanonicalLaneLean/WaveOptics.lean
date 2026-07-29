import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricOpticsCanonicalLaneLean.MaxwellEquations

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure WaveOpticsPackage (M : MaxwellEquationsPackage) where
  waveEquation : Prop
  helmholtzEquation : Prop
  monochromaticWave : Prop
  planeWaveSolution : Prop
  sphericalWaveSolution : Prop
  huygensPrinciple : Prop
  diffractionIntegral : Prop

structure WaveOpticsEvidence (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) where
  waveEquationClosed : W.waveEquation
  helmholtzEquationClosed : W.helmholtzEquation
  monochromaticWaveClosed : W.monochromaticWave
  planeWaveSolutionClosed : W.planeWaveSolution
  sphericalWaveSolutionClosed : W.sphericalWaveSolution
  huygensPrincipleClosed : W.huygensPrinciple
  diffractionIntegralClosed : W.diffractionIntegral

def WaveOpticsClosed (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) : Prop :=
  W.waveEquation ∧ W.helmholtzEquation ∧ W.monochromaticWave ∧
  W.planeWaveSolution ∧ W.sphericalWaveSolution ∧
  W.huygensPrinciple ∧ W.diffractionIntegral

theorem wave_optics_closed_from_evidence (M : MaxwellEquationsPackage)
    (W : WaveOpticsPackage M) (E : WaveOpticsEvidence M W) :
    WaveOpticsClosed M W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.helmholtzEquationClosed
      (And.intro E.monochromaticWaveClosed
        (And.intro E.planeWaveSolutionClosed
          (And.intro E.sphericalWaveSolutionClosed
            (And.intro E.huygensPrincipleClosed
              E.diffractionIntegralClosed)))))

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse
