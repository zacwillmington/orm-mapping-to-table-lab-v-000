class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(id=nil, name, grade)
      @id = id
      @name = name
      @grade = grade
  end

  def self.create_table
      sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
        )
        SQL
      DB[:conn].execute(sql)
  end

  def self.drop_table
      drop = "DROP TABLE[IF EXISTST] students"
      DB[:conn].execute(drop)
  end

end
