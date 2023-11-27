#!/bin/bash
#this script will run the PrediXcan.py wrapper for Predict.py and PrediXcanAssociation.py
#copied from MetaXcan github wiki

python3 $METAXCAN/PrediXcan.py \
--model_db_path $DATA/models/gtex_v8_en/en_Whole_Blood.db \
--vcf_genotypes $DATA/1000G_hg37/ALL.chr*.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz \
--vcf_mode genotyped \
--prediction_output $RESULTS/vcf_1000G_hg37_en_b/Whole_Blood__predict.txt \
--prediction_summary_output $RESULTS/vcf_1000G_hg37_en_b/Whole_Blood__summary.txt \
--input_phenos_file $DATA/1000G_hg37/random_pheno_1000G_hg37.txt \
--input_phenos_column pheno \
--output $RESULTS/vcf_1000G_hg37_en_b/Whole_Blood__association.txt \
--verbosity 9 \
--throw

#what this might look like without the environment variables, just normal paths:
#python3 ~/MetaXcan/software/PrediXcan.py \
#--model_db_path ~/predixcan_sample_data/models/gtex_v8_en/en_Whole_Blood.db \
#--vcf_genotypes ~/predixcan_sample_data/1000G_hg37/ALL.chr*.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz \
#--vcf_mode genotyped \
#--prediction_output ~/predixcan_out/vcf_1000G_hg37_en_b/Whole_Blood__predict.txt \
#--prediction_summary_output ~/predixcan_out/vcf_1000G_hg37_en_b/Whole_Blood__summary.txt \
#--input_phenos_file ~/predixcan_sample_data/1000G_hg37/random_pheno_1000G_hg37.txt \
#--input_phenos_column pheno \
#--output ~/predixcan_out/vcf_1000G_hg37_en_b/Whole_Blood__association.txt \
#--verbosity 9 \
#--throw
