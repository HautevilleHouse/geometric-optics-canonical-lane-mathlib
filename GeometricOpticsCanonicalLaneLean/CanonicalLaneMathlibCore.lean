import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricOpticsCanonicalLaneLean

structure Projection (S : Type u) where
  toFun : S → S
  idempotent : ∀ x, toFun (toFun x) = toFun x

structure AdditiveLane (X : Type u) [Add X] [Sub X] where
  state : X
  delta : X
  projection : Projection X
  carriedComponent : X
  xNext : X
  x_next_eq : xNext = state + projection.toFun delta
  carried_component_eq : carriedComponent = delta - projection.toFun delta
  projection_idempotent_on_delta : projection.toFun (projection.toFun delta) = projection.toFun delta

end GeometricOpticsCanonicalLaneLean
end HautevilleHouse