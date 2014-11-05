class TicketIterator
  def initialize(tickets_count)
    @tickets_count = tickets_count
    @current_ticket = 0
  end
  def next
    @current_ticket += 1
    if @current_ticket <= @tickets_count
      "A#{@current_ticket}"
    else
      raise StopIteration
    end
  end
end

class AdvancedTicketDispenser
  def initialize(total_tickets)
    @letters = ('A'..'Z').to_enum
    @numbers = (1..total_tickets).to_enum
  end

  def next
    "#{@letters.next}#{@numbers.next}"
  end
end


class TicketInternalDispenser
  def initialize(total_tickets)
    @total_tickets = total_tickets
  end

  def each
    current_ticket = 0
    while current_ticket < @total_tickets
      current_ticket += 1
      yield current_ticket
    end
  end
end

class TicketEnumerable
  include Enumerable

  def initialize(total_tickets)
    @total_tickets = total_tickets
  end

  def each
    current_ticket = 0
    while current_ticket < @total_tickets
      current_ticket += 1
      yield current_ticket
    end
  end
end


class SimpleTicketEnumerable
  include Enumerable

  def initialize(total_tickets)
    @total_tickets = total_tickets
  end

  def each
    (1..@total_tickets).each { |x| yield x }
  end
end
