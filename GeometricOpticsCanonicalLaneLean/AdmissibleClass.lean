import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure AdmittedOpticsObject where
  object : Type
  lightProperty : Prop
  witness : lightProperty

structure AdmissibleClass where
  object : AdmittedOpticsObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.lightProperty ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse