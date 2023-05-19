module Array: {
  type t<'a>
  /**
  `make(array<'a>, Immutable.Array.t<'a>)`

  ```rescript example
  let t1 = [1,2,3]
  let t2 = t1->Immutable.Array.make
  ```
  */
  let fromArray: array<'a> => t<'a>
  let isEmpty: t<'a> => bool
  let head: t<'a> => option<'a>
  let tail: t<'a> => t<'a>
  let toArray: t<'a> => array<'a>
  let map: (t<'a>, 'a => 'b) => t<'b>
  let concat: (t<'a>, 'a) => t<'a>
  let append: (t<'a>, 'a) => t<'a>
  let get: (t<'a>, int) => option<'a>
  let set: (t<'a>, int, 'a) => t<'a>

  // same as array
  let at: (t<'a>, int) => option<'a>
  let concatMany: (t<'a>, t<t<'a>>) => t<'a>
  let copy: t<'a> => t<'a>
  let copyAlllWithin: (t<'a>, ~target: int) => t<'a>
  let copyWithin: (t<'a>, ~target: int, ~start: int, ~end: int) => t<'a>
  let copyWithinToEnd: (t<'a>, ~target: int, ~start: int) => t<'a>
}

module Dict: {
  type t<'a>
  let make: Dict.t<'a> => t<'a>
  let set: (t<'a>, string, 'a) => t<'a>
  let get: (t<'a>, string) => option<'a>
  let fromArray: array<(string, 'a)> => t<'a>
  let fromIterator: Core__Iterator.t<(string, 'a)> => t<'a>
  let toArray: t<'a> => array<(string, 'a)>
}
