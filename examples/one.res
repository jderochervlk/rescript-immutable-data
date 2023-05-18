let t1 = [1]

let t2 = t1->Immutable.Array.fromArray->Immutable.Array.head
// let t3 = t1->Immutable.Array.head
let t4 = t1->Immutable.Array.fromArray->Immutable.Array.tail

let t5 = Dict.make()
let t6 = t5->Immutable.Dict.make->Immutable.Dict.set("t", 1)

let t10 = Dict.fromArray([("foo", "bar")])->Immutable.Dict.make

// let t11 = t1->Immutable.Array.make->Array.map(n => n + 1)

let t11 = t1->Immutable.Array.fromArray
let t12 = t11->Immutable.Array.at(1)
