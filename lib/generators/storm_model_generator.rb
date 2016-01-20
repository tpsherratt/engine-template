class StormModelGenerator < Rails::Generators::NamedBase

  def create_initializer_file
    create_file "app/models/#{file_path}.rb", <<-FILE
module #{namespace}
  class #{file_name.camelize} < Storm::BaseModel

    # default...
    # set_manager_class #{class_name}Manager

    # attributes :id, ...


  end
end

      FILE

    create_file "app/models/#{file_path}_manager.rb", <<-FILE
module #{namespace}
  class #{file_name.camelize}Manager < Storm::BaseManager

    # defaults...
    # set_domain_class #{class_name}
    # set_domain_class #{class_name}Record

    # def find_by_custom(thing_id)
    #   sql = "SELECT * FROM..."
    #   self.find_by_sql([sql, thing_id])
    # end

  end
end

      FILE

    create_file "app/models/#{file_path}_record.rb", <<-FILE
module #{namespace}
  class #{file_name.camelize}Record < Storm::BaseRecord
    self.table_name = '#{table_name}'

    # validates :my_attr, presence: true

  end
end

      FILE

    generate "migration", "create_#{table_name}"
  end
end