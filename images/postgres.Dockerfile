FROM postgres:15.1-bullseye

# This is where I think the migration-on-startup stuff should be done
# but getting dependencies installed on the base postgres image is a 
# pain in the ass.