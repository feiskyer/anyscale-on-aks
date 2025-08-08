# MUST use this base version as other versions won't work yet
FROM anyscale/ray-llm:2.46.0-py311-cu124

RUN pip install --no-cache-dir azure-storage-blob azure-identity smart_open[azure] -c /home/ray/requirements_compiled.txt

# Add your Debian packages here. Do not install unnecessary packages for a smaller image size to optimize build and cluster startup time.
# RUN sudo apt-get update -y \
#     && sudo apt-get install --no-install-recommends -y <package1> <package2> \
#     && sudo rm -f /etc/apt/sources.list.d/*

# Add other build commands here.
# RUN echo "Testing Ray import..." && python -c "import ray"
