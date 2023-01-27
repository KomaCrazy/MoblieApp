void main() {
  List box = ["kaw", "jan", "ok"];
  List.generate(
    box.length,
    (index) => print("${box[index]}"),
  );
}
