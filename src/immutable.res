module Array = {
  // new to Immutable
  type t<'a> = array<'a>
  let fromArray = arr => arr->Array.copy
  let toArray = fromArray

  // different from array
  let set = (t, i, v) => {
    let c = t->Array.copy
    c->Array.set(i, v)
    c
  }

  // same as Array

  let at = Array.at

  let concatMany = Array.concatMany
  let concat = (t, a) => [a]->Array.concat(t)
  let copy = Array.copy
  let copyAlllWithin = Array.copyAllWithin
  let copyWithin = Array.copyWithin
  let copyWithinToEnd = Array.copyWithinToEnd

  let get = Array.get
  let map = Array.map

  // not sure we want to add these
  let append = (t, a) => t->Array.concat([a])
  let isEmpty = t => t->Array.length == 0
  let head = t => t->Array.get(0)
  let tail = t => isEmpty(t) ? [] : t->Array.slice(~start=1, ~end=t->Array.length)
}


// Dict seems like another good candidate for being Immutable
module Dict = {
  type t<'a> = Dict.t<'a>
  let make = Dict.copy
  let set = (o, k, v) => {
    let c = o->Dict.copy
    c->Dict.set(k, v)
    c
  }
  let get = Dict.get
  let fromArray = Dict.fromArray
  let fromIterator = Dict.fromIterator
  let toArray = Dict.toArray
}
