void main()
{
  List<Map<String, dynamic>> Students = [{"name" : "Alice", "Scores" :[85,90,78]},{ "name" : "Bob", "Scores" :[88,76,95]},{ "name" : "Charlie", "Scores" :[90,92,85]},];

  Map<String , double> AverageScores = {};
  for(var Student in Students){
    String name = Student["name"];
    List<int>Scores = List<int>.from(Student["Scores"]);
    double avg = Scores.reduce((a,b) => a+b)/Scores.length;
    AverageScores[name] = double.parse(avg.toStringAsFixed(2));
  }
  var sortedList = AverageScores.entries.toList()
    ..sort((a,b) => b.value.compareTo(a.value));
        Map<String,double> sortedavgsc = {
          for(var entry in sortedList)
            entry.key:entry.value};
        print("{");
  sortedavgsc.forEach((key,value){
    print( '"$key":$value, ');
  });
  print("}");
}