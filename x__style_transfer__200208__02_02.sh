#!/bin/bash
export nst_script=x__style_transfer__200208__02_02.py

# Run the batch to process NST xNo 2.2-4

## xNo 2.2
### Same as 2.1
echo "Variation 1 - Same as the previous no 2.1"
srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/all.jpg
nstout=nst/x__style_transfer__200208__02_02a__all__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/mountain.jpg
nstout=nst/x__style_transfer__200208__02_02a__mountain__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/sky.jpg
nstout=nst/x__style_transfer__200208__02_02a__sky__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout



## xNo 2.2
### Var 2 of the Style (cropped)
echo "Variation 2 - Cropped"

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001__var_2.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/all.jpg
nstout=nst/x__style_transfer__200208__02_02__var_2__all__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001__var_2.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/mountain.jpg
nstout=nst/x__style_transfer__200208__02_02__var_2__mountain__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001__var_2.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/sky.jpg
nstout=nst/x__style_transfer__200208__02_02__var_2__sky__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout




## xNo 2.2
### Var 3 of the Style (cropped)
echo "Variation 3 - Even more Cropped"


srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001__var_3.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/all.jpg
nstout=nst/x__style_transfer__200208__02_02__var_3__all__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001__var_3.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/mountain.jpg
nstout=nst/x__style_transfer__200208__02_02__var_3__mountain__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout

srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001__var_3.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/sky.jpg
nstout=nst/x__style_transfer__200208__02_02__var_3__sky__stylized.jpg
python $nst_script $srcstyle $targetimage $nstout


