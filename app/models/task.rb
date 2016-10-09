class Task < ActiveRecord::Base
  belongs_to :invoice

  def self.make_tasks(tasks, invoice_id)
    puts tasks.inspect
    tasks.each do |t|
      puts t.inspect
      task = Task.create
      task.invoice_id = invoice_id
      task.name = t[1][:name]
      task.price = t[1][:price]
      task.description = t[1][:description]

      task.save
    end
  end
end
