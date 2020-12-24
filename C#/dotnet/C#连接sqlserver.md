```c#
// 方法一：
SqlConnectionStringBuilder sr = new SqlConnectionStringBuilder();   // 创建一个连接对象

sr.DataSource = "127.0.0.1";   // 本机连接
sr.UserID = "用户名";   // 用户名，系统默认为sa
sr.Password = "密码";    // 密码
sr.InitialCatalog = "Student";    // 需要查询的数据库

// 方法二：
string sqlstr = "Data Source = 127.0.0.1; Initial Catalog = Student; User ID = 用户名; Password =  密码";

// 创建连接
SqlConnection Myconnect = new SqlConnection(sqlstr);    // 使用方法一时：sr.ToString()
// 打开连接
Myconnect.Open();   

string name = Console.ReadLine();  // 输入查询内容
// 查询语句
string sqlStr = "select * from dbo.db_Student_Imformation where 姓名 = '"+ name + "';";
// 执行SQL语句的对象
SqlCommand Mycom = new SqlCommand(sqlStr,Myconnect);  // 参数1：查询语句； 参数2：连接对象，必须要打开状态

// 接收结果
SqlDataReader checkstr = Mycom.ExecuteReader();   // 只能查询

while(checkstr.Read())
{
      Console.WriteLine(checkstr["ID"].ToString());   // 读取数据
}
Myconnect.Close();   // 关闭数据库

```

