require 'spec_helper'

describe "attendances/new" do
  before(:each) do
    assign(:attendance, stub_model(Attendance,
      :event_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", attendances_path, "post" do
      assert_select "input#attendance_event_id[name=?]", "attendance[event_id]"
      assert_select "input#attendance_user_id[name=?]", "attendance[user_id]"
    end
  end
end
