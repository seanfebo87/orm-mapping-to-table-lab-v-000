class Student
  attr_accessor :name, :grade
  attr_reader :id 
  def initialize (name, grade, id = nil)
    @name = name 
    @grade = grade
    @id = id
  end
  
  def create_table
    sql = 
    DB[:conn].execute(CREATE TABLE students ( 
      id INTEGER PRIMARY KEY, 
      name TEXT, 
      grade INTEGER
      );
      )
  end
end
