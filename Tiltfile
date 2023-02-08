print("""
-----------------------------------------------------------------
✨ Reloading configuration from the Tiltfile!
-----------------------------------------------------------------
""".strip())

docker_compose("./compose.yaml")

# =========================================================
# Label Services

# database and database gui services
dc_resource('postgres', labels=["database"])
dc_resource('pgadmin', labels=["database"])

# main user-facing website
# dc_resource('website', labels=["frontend"])

# =========================================================
# Live Reload

# set up live reload for the website
# docker_build('website', '.',
#     dockerfile="images/website.Dockerfile",
#     live_update = [
#         sync('src/', '/src/'),
#         sync('assets/', '/assets/'),
#         sync('Cargo.toml', '/Cargo.toml'),
#         run('cargo build', trigger='Cargo.toml'),
#         restart_container()
#   ])
