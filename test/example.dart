void main() {

    try {
        throw Exception('Error');
        
        print('Try');
    }
    catch(e){
        print('Catch');
    }
    finally{
        print('Finally');
    }

    final testClass = ClassExample();

    final myAge = testClass.age(
        birthYear: 1999,

    );
    final list = ['a','b','c','d','e'];
    //1.
    for (var i = 0 ; i<list.length; i++){
        print('Hello, world ${list[i]}');
    }
    print('------------------------');
    //2.

    list.forEach((item){
        print('Hello, world $item');
    });
    print('------------------------');
    //3.
    List.generate(list.length, (i){
        final item = list[i];
        print('Hello, world $item');
    });
    print('------------------------');
    print(myAge);
    // JAVA: "나의 나이는" + myAge + "입니다."
    // kotlin "나의 나이는 ${myAge} 입니다."
    print('나의 나이는 $myAge 입니다.');
    final myBirth = testClass.birth(
        year:1,
        month: 1,
        day: 1,);
    print('나의 $myBirth');
}
class ClassExample {
    String birth({required year, required month, int? day}){
        return '생년월일은 $year 년 $month월 $day 일 입니다.';
    }
    int age(
        {int birthYear = 1999}
        ){
        return 2025 - birthYear;
    }

}