package com.weblab.webpos.vo;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class RecipeVO {
    private int recipe_id;
    private int menu_id;
    private int ingredient_id;
    private int how_many_qty;
}
