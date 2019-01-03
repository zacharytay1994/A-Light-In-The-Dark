if (lights_on_)
{
	if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
	}

	var lx = target_.x;       // the light position
	var ly = target_.y - 10;
	var rad = 256          // the radius of the light
	var tile_size = 32;     // size of a tile

	var startx = floor((lx-(rad*2))/tile_size);
	var endx = floor((lx+(rad*2))/tile_size);
	var starty = floor((ly-(rad*2))/tile_size);
	var endy = floor((ly+(rad*2))/tile_size);

	//draw_set_color(c_yellow);
	//draw_rectangle(startx*tile_size,starty*tile_size,
	//endx*tile_size,endy*tile_size,true);

	for(var yy=starty;yy<=endy;yy++)
	{
	    for(var xx=startx;xx<=endx;xx++)
	    {
	        //var tile = tilemap_get(tilemap_,xx,yy);
			//var tile_door = tilemap_get(tilemap_doors_, xx, yy);
			var tile_shadow = tilemap_get(tilemap_shadow_, xx, yy);
	        if( tile_shadow!=0 ){
				surface_set_target(surf);
				draw_clear_alpha(c_black,0)
			
				vertex_begin(VBuffer, VertexFormat);
				for(var yy=starty;yy<=endy;yy++)
				{
				    for(var xx=startx;xx<=endx;xx++)
				    {
				        //var tile = tilemap_get(tilemap_,xx,yy);
						var tile_shadow = tilemap_get(tilemap_shadow_, xx, yy);
				        if( tile_shadow!=0 )
				        {
				            // get corners of the 
				            var px1 = xx*tile_size;     // top left
				            var py1 = yy*tile_size;
				            var px2 = px1+tile_size;    // bottom right
				            var py2 = py1+tile_size;
							
				            if( SignTest( px1,py1, px2,py1, lx,ly) ){
								if tilemap_get(tilemap_shadow_,xx,yy-1) == 0
								{
									ProjectShadow(VBuffer,  px1,py1, px2,py1, lx,ly );
								}
						    }
						    if( SignTest( px2,py1, px2,py2, lx,ly) ){
								if tilemap_get(tilemap_shadow_,xx+1,yy) == 0
								{
									ProjectShadow(VBuffer,  px2,py1, px2,py2, lx,ly );
								}
						    }
						    if( SignTest( px2,py2, px1,py2, lx,ly) ){
								if tilemap_get(tilemap_shadow_,xx,yy+1) == 0
								{
									ProjectShadow(VBuffer,  px2,py2, px1,py2, lx,ly );
								}
						    }
						    if( SignTest( px1,py2, px1,py1, lx,ly) ){
								if tilemap_get(tilemap_shadow_,xx-1,yy) == 0
								{
									ProjectShadow(VBuffer,  px1,py2, px1,py1, lx,ly );
								}
							}
				        }
				    }
				}
				vertex_end(VBuffer);    
				vertex_submit(VBuffer,pr_trianglelist,-1)
				surface_reset_target();
				shader_set(sh_lighting)
				shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
				draw_surface_ext(surf,0,0,1,1,0,color_,intensity_);
				shader_reset();
	        }
	    }
	}
}