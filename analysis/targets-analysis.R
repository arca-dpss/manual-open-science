#================================#
#====    Targets Analysis    ====#
#================================#

# Targets settings
targets::tar_config_set(script = "analysis/targets-workflow.R",
                        store = "analysis/_targets/")

#----    Analysis    ----

# Check workflow
targets::tar_manifest(fields = "command")
targets::tar_visnetwork()

# Run analysis
targets::tar_make()

# End
targets::tar_visnetwork()


#----    Results    ----

targets::tar_load(my_data)
targets::tar_load(result)

#----
