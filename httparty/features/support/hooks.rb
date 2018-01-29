Around('@run_10_times') do |_scenario, block|
  @total_of_tests_to_run = 10
  run_aldebaran_test(block)
end

def run_aldebaran_test(block)
  for test_number in (1..@total_of_tests_to_run)
    block.call
    Debug.new.debug_msg('###################################################################')
    Debug.new.debug_msg("########  Test Number: #{test_number} of #{@total_of_tests_to_run} ########")
    Debug.new.debug_msg('###################################################################')
  end
end