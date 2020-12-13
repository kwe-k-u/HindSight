

class Engine{
  // String current = "first";

  Tile getNext(String key) => gameActions[key];




  Map<String, Tile> gameActions = {
    "first": Tile(
      text: "First trial",
      actions: [
        "first one",
        "first two"
      ],
        nextp: ["second", "third"]),

    "second": Tile(
      text: "Second tile",
      actions: [
        "second one",
        "second two"
      ],
      nextp: ["first", "third"]
    ),

    "third": Tile(
      text: "Third tile",
      actions: [
        "third one",
        "third two"
      ],
        nextp: ["first", "second"]
    )
};


}


class Tile {

  String title;
  List<String> actions;
  List <String> next;

  Tile({ String text, List<String> actions, List<String> nextp }) {
    this.title = text;
    this.actions = actions;
    this.next = nextp;
  }
}