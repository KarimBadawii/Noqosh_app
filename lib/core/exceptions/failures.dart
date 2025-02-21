abstract class RouteFailures {
  String message;
  RouteFailures(this.message);

  @override
  String toString(){
    return message;
  }
}

class RouteLocalFailures extends RouteFailures{
  RouteLocalFailures(super.message);
  @override
  String toString() {
    return super.message;
  }
}
class RouteRemoteFailures extends RouteFailures{
  RouteRemoteFailures(super.message);
  @override
  String toString() {
    return super.message;
  }
}
class RouteCredentialFailures extends RouteFailures{
  RouteCredentialFailures(super.message);
  @override
  String toString() {
    return super.message;
  }
}