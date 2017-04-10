# bad example
class DealProcessorBad
  attr_reader :deals

  def initialize(deals)
    @deals = deals
  end

  def process
    deals.each do |deal|
      Commission.create(deal: deal, amount: calculate_commission(deal))
      mark_deal_processed
    end
  end

  def mark_deal_processed
    # Implementation
  end

  def calculate_commission(deal)
    deal.amount * 0.05
  end
end

# solution
class DealProcessor
  attr_reader :deals

  def initialize(deals)
    @deals = deals
  end

  def process
    deals.each do |deal|
      CommissionCalculator.create_commission(deal) if mark_deal_processed
    end
  end

  def mark_deal_processed
    # Implementation
  end
end

class CommissionCalculator
  def self.create_commission(deal)
    Commission.new(deal: deal, amount: calculate(deal))
  end

  private
  def self.calculate(deal)
    deal.amount * 0.05
  end
end


#Class Commission example
class Commission
  # Implementation
end
