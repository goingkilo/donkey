require 'test_helper'

class GiftRecordsControllerTest < ActionController::TestCase
  setup do
    @gift_record = gift_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_record" do
    assert_difference('GiftRecord.count') do
      post :create, gift_record: { gift: @gift_record.gift, name: @gift_record.name, notes: @gift_record.notes, when: @gift_record.when }
    end

    assert_redirected_to gift_record_path(assigns(:gift_record))
  end

  test "should show gift_record" do
    get :show, id: @gift_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift_record
    assert_response :success
  end

  test "should update gift_record" do
    patch :update, id: @gift_record, gift_record: { gift: @gift_record.gift, name: @gift_record.name, notes: @gift_record.notes, when: @gift_record.when }
    assert_redirected_to gift_record_path(assigns(:gift_record))
  end

  test "should destroy gift_record" do
    assert_difference('GiftRecord.count', -1) do
      delete :destroy, id: @gift_record
    end

    assert_redirected_to gift_records_path
  end
end
