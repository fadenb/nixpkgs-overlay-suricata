{ stdenv, pythonPackages, fetchFromGitHub }:

with pythonPackages;

buildPythonApplication rec {
  pname = "suricata-update";
  version = "1.0.5";
  name = "${pname}-${version}";

  src = fetchFromGitHub {
    repo = pname;
    owner = "OISF";
    rev = version;
    sha256 = "1bx00ydc6f63y2falv6nyg34w3lr9p1caz27q6sas8pkmg728c4n";
  };

  propagatedBuildInputs = [
    pythonPackages.pyyaml
  ];

  meta = {
    description = "The tool for updating your Suricata rules";
    license = stdenv.lib.licenses.gpl2;
    homepage = https://suricata-update.readthedocs.io/;
  };
}
