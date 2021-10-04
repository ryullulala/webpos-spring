package com.weblab.webpos.entity;

import lombok.Getter;

@Getter
public class RecipeVO {
    private int recipe_id;
    private int menu_id;
    private int ingredient_id;
    private int how_many_qty;
}
