import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

abbrev bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.lightProperty

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.witness

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse