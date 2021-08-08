require 'test_helper'
require 'minitest/autorun'

class DoctorTest < Minitest::Test
  def setup
    @doctor = Doctor.create(
      name: 'House',
      address: 'Here and there 21',
      speacialty: 'surgeon',
      rating: 4
      )
  end

  test 'should be valid' do
    assert @doctor.valid?
  end

  test 'name cannot be blank' do
    @doctor.name = ""
    assert_not @doctor.valid?
  end

  test 'address cannot be blank' do
    @doctor.address = ""
    assert_not @doctor.valid?
  end

  test 'specialty cannot be blank' do
    @doctor.specialty = ""
    assert_not @doctor.valid?
  end

  test 'rating cannot be nil' do
    @doctor.rating = nil
    assert_not @doctor.valid?
  end
end
