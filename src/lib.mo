import Map "mo:map/Map";
import Iter "mo:base/Iter";

module {

   public type Entry = {
      name : Text;
      url : Text;
  };

  public type Response = [Entry];

  public func initCollection() : Map.Map<Text, Entry>{
    return Map.new<Text, Entry>();
  };

  public func register(existingCol: Map.Map<Text, Entry>, newEntry: Entry) : (){
    ignore  Map.put(existingCol, Map.thash, newEntry.name, newEntry);
  };

  public func respond(existingCol: Map.Map<Text, Entry>) : Response{

    return Iter.toArray<Entry>(Map.vals(existingCol));
  };

};