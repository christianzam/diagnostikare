require 'test_helper'
require 'minitest/autorun'
 
class AppointmentTest < Minitest::Test
  def setup
    @appointment = Appointment.create(
      symptoms: 'Lorem',
      user_id: 2,
      doctor_id: 7
      )
  end

  test 'should be valid' do
    assert @appointment.valid?
  end

  test 'Symptoms cannot be under 6 chars' do
    @appointment.symptoms = ""
    assert_not @appointment.valid?
  end

  test 'it must have an user_id' do
    @appointment.user_id = nil
    assert_not @appointment.valid?
  end

  test 'it must have an doctor_id' do
    @appointment.doctor_id = nil
    assert_not @appointment.valid?
  end
end