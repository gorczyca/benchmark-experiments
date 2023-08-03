    # running locally
    #python runner.py aspforaspic thimm_maxsat 600 adm "/home/piotr/Dresden/aspic-flexdds/1_experiments" "/home/piotr/Dresden/aspic-flexdds/2_instances" "/home/piotr/Dresden/aspic-flexdds/3_instance_goal" "/home/piotr/Dresden/aspic-flexdds/5_outputs"

    # remote
    # /home/pigo271b/.conda/envs/flexASP/bin/python /lustre/ssd/ws/pigo271b-flex-ws/benchmark-experiments/runner.py aspforaspic thimm_maxsat 600 adm /lustre/ssd/ws/pigo271b-flex-ws/benchmark-experiments /lustre/ssd/ws/pigo271b-flex-ws/2_instances /lustre/ssd/ws/pigo271b-flex-ws/3_instance_goal /lustre/ssd/ws/pigo271b-flex-ws/5_outputs

    # test command - single file local

    # /home/piotr/Dresden/aspic-flexdds/1_experiments/solvers/aspforaspic/aspforaspic.sh /home/piotr/Dresden/aspic-flexdds/2_instances/thimm/maxsat/aspforaspic/wcnf_min-width-MinWidthCB_mitdbsample_300_64_1k_6s_3t_6.wcnf_5.aspic p9066 adm

    # test command - single file remote

    # /lustre/ssd/ws/pigo271b-flex-ws/benchmark-experiments/solvers/aspforaspic/aspforaspic.sh /lustre/ssd/ws/pigo271b-flex-ws/2_instances/thimm/maxsat/aspforaspic/wcnf_min-width-MinWidthCB_mitdbsample_300_64_1k_6s_3t_6.wcnf_5.aspic p9066 adm


for file in /lustre/ssd/ws/pigo271b-flex-ws/4_slurm_scripts/*.sh; do [ -f "$file" ] && sbatch "$file"; done

copying 

## tweety
python runner.py tweety thimm_random_tweety 10 adm "/home/piotr/Dresden/aspic-flexdds/1_experiments" "/home/piotr/Dresden/aspic-flexdds/2_instances" "/home/piotr/Dresden/aspic-flexdds/3_instance_goal" "/home/piotr/Dresden/aspic-flexdds/5_outputs"


python runner.py arg2p thimm_random_arg2p 10 adm "/home/piotr/Dresden/aspic-flexdds/1_experiments" "/home/piotr/Dresden/aspic-flexdds/2_instances" "/home/piotr/Dresden/aspic-flexdds/3_instance_goal" "/home/piotr/Dresden/aspic-flexdds/5_outputs"