{ mkDerivation, base, fixplate, lens, stdenv }:
mkDerivation {
  pname = "fixplate-lens";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base fixplate lens ];
  description = "Optics for types from @fixplate@";
  license = stdenv.lib.licenses.bsd3;
}
