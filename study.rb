class Business
  HEY_PHRASE = "Hey worker "

  def initialize
    @workers_list = Array.new
  end

  def add_worker(worker_name)
    @workers_list << worker_name
    puts "Worker #{worker_name} is added"
  end

  def print_workers_count
    count_workers = @workers_list.length
    puts "There are #{count_workers} workers in our company"
  end

  def fire_worker(worker_name)
    @@workers_list.delete(worker_name) if @workers_list.include?(worker_name)
    puts "Worker #{worker_name} is fired"
  end

  def print_worker_list
    puts "\nWorkers list:"
    @workers_list.each { |x| puts x }
  end
end

class WorkerAccountant < Business
  @fixed_salary = 2000

  def calculate_salary(experience, profile_job)
    total_salary = @fixed_salary * experience
    puts "#{HEY_PHRASE}#{@workers_list[0]}(#{profile_job}) your total salary is #{total_salary}"
  end
end

facebook = Business.new
microsoft = Business.new

facebook.add_worker('Ted Lowe')
facebook.add_worker('Alex Snow')
microsoft.add_worker('Jack Daniels')
microsoft.add_worker('Ilan Mask')

microsoft.print_worker_list
facebook.print_worker_list