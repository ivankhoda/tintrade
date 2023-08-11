# frozen_string_literal = true

require 'ruby-prof'

module CustomProfiler
  def report(method)
    profile = RubyProf::Profile.new

    result = profile.profile do
      profile.measure_mode = RubyProf::PROCESS_TIME
      method
    end
    printer = RubyProf::GraphPrinter.new(result)
    printer.print(File.open('profilers/ruby_prof_reports/app_graph_profile_1.txt', 'w+'), {})
  end
  module_function :report
end
