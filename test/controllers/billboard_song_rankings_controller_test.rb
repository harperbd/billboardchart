require 'test_helper'

class BillboardSongRankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get billboard_song_rankings_index_url
    assert_response :success
  end

  test "should get show" do
    get billboard_song_rankings_show_url
    assert_response :success
  end

  test "should get new" do
    get billboard_song_rankings_new_url
    assert_response :success
  end

end
