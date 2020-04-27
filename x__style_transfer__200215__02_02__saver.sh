#!/bin/bash
export nst_script=x__style_transfer__200208__02_02__saver.py
export sufxx="__saver"
# Run the batch to process NST xNo 2.2-4

## xNo 2.2 SAVING MODEL
### Same as 2.1
echo "Variation 1 - Same as the previous no 2.1"
srcstyle=img/Jessy_et_JGWill_Paysage_peinture_acrylique_2001.jpg
targetimage=render/x__style_transfer__200208__02_02__base_poly_scene_target_for_StyleTransfer/all.jpg
nstout=nst/x__style_transfer__200208__02_02a__all__stylized$sufxx.jpg
python $nst_script $srcstyle $targetimage $nstout

