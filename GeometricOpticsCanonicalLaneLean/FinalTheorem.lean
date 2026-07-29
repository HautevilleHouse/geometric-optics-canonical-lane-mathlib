import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

def ConstrainedGeometricOpticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_optics_endgame (A : AdmissibleClass) :
    ConstrainedGeometricOpticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse