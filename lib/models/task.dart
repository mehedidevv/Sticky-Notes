
class Task{
  String taskName;
  bool isDone;

  Task({required this.taskName,this.isDone=false});

  void toggleDone(){
    isDone= !isDone;
  }
}







