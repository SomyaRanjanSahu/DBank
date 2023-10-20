import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  // orthogonal persistence(stable keyword), it will hold on to the value even after `dfx deploy`
  stable var currentValue: Float = 0;

  stable var startTime = Time.now();
  Debug.print(debug_show(startTime));

  // ----- Deposit the money -------
  public func topUp(amount : Float) {

    currentValue += amount;
    Debug.print(debug_show (currentValue));
    
  };

  // -------- Withdraw money -----------
  public func withdrawl(amount : Float) {

    let balance : Float = currentValue - amount;

    if (balance >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Withdrawl money is more than current balance");
    };

  };

  // ----- to check the current balance ---------
  public query func checkBalance(): async Float {
    return currentValue;
  };

  // ---------- compound interest --------------
  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElaspedS = timeElapsedNS / 1000000000;

    currentValue := currentValue * (1.01 ** Float.fromInt(timeElaspedS));

    startTime := currentTime;
  };

};
