(* will be executed on secondary Wolfram Kernel *)
Seed[id_String] := StringTemplate["<div class=\"hydrator-object\" id=\"hydrator-seed-``\" data-object=\"``\"></div><script>interpretate([\"HydrateSeed\", \"'hydrator-seed-fo-``'\"], {})</script>"][id, id, id];

Seed[expr_, id_String] := (
  CreateFrontEndObject[{AttachDOM["hydrator-seed-"<>id], expr}, "hydrator-seed-fo-"<>id];
)

Hydrate[expr_, id_String] := (
  CreateFrontEndObject[{AttachDOM["hydrator-seed-"<>id], expr}, "hydrator-seed-fo-"<>id];
  FrontSubmit[HydrateSeed["hydrator-seed-fo-"<>id]];
)