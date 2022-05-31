public class StudentInfo {

    public StudentInfo(){

        System.debug('Welcome!!!');
    }

    public static void StudentList() {

        List<string> listStudentName = new List<string>();
        listStudentName.add('Eric');
        listStudentName.add('Emily');

        System.debug('names are: ' + listStudentName);


}

}
