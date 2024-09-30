import ICRC10 "../";


shared ({ caller = _owner }) actor class Token  () = this{

    
  stable var icrc10 = ICRC10.initCollection();

  public shared(msg) func init() : async() {
    ICRC10.register(icrc10, {name = "ICRC-7"; url="https://github.com/dfinity/ICRC/ICRCs/icrc7/"});
  };

  public query func icrc10_supported_standards() : async ICRC10.Response {
    return ICRC10.respond(icrc10);
  };


    
};
