module Inputs
  class DailyReportService
    include Service

    def call
      sent_today
    end

    private

    def sent_today
      user.inputs.sent.today.includes(:source)
    end

    attr_accessor :user
  end
end
