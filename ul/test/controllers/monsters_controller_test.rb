require 'test_helper'

class MonstersControllerTest < ActionController::TestCase
  setup do
    @monster = monsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monster" do
    assert_difference('Monster.count') do
      post :create, monster: { bot_stat: @monster.bot_stat, cost: @monster.cost, current_reforge: @monster.current_reforge, element_id: @monster.element_id, max_reforge: @monster.max_reforge, name: @monster.name, rarity_id: @monster.rarity_id, skill_description: @monster.skill_description, skill_name: @monster.skill_name, stat_element_id: @monster.stat_element_id, thumbnail: @monster.thumbnail, top_stat: @monster.top_stat }
    end

    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should show monster" do
    get :show, id: @monster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monster
    assert_response :success
  end

  test "should update monster" do
    patch :update, id: @monster, monster: { bot_stat: @monster.bot_stat, cost: @monster.cost, current_reforge: @monster.current_reforge, element_id: @monster.element_id, max_reforge: @monster.max_reforge, name: @monster.name, rarity_id: @monster.rarity_id, skill_description: @monster.skill_description, skill_name: @monster.skill_name, stat_element_id: @monster.stat_element_id, thumbnail: @monster.thumbnail, top_stat: @monster.top_stat }
    assert_redirected_to monster_path(assigns(:monster))
  end

  test "should destroy monster" do
    assert_difference('Monster.count', -1) do
      delete :destroy, id: @monster
    end

    assert_redirected_to monsters_path
  end
end
