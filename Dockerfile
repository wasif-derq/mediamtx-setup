# FROM ubuntu:22.04

# # Install dependencies
# RUN apt-get update && apt-get install -y \
#     ffmpeg \
#     wget \
#     tar \
#  && rm -rf /var/lib/apt/lists/*

# # Download and extract MediaMTX
# RUN wget https://github.com/bluenviron/mediamtx/releases/download/v1.13.0/mediamtx_linux_amd64.tar.gz \
#     && tar -xvzf mediamtx_linux_amd64.tar.gz -C /mediamtx \
#     && rm mediamtx_linux_amd64.tar.gz

# WORKDIR /mediamtx

# # Expose necessary ports
# EXPOSE 8554 8889 8000 8001 1935 8888 8189 8890

# ENTRYPOINT ["./mediamtx"]







# FROM bluenviron/mediamtx:latest

# RUN apt-get update && apt-get install -y ffmpeg

# EXPOSE 8554 8889 8000 8001 1935 8888 8189 8890


# ENTRYPOINT ["./mediamtx"]





# FROM ubuntu:22.04

# RUN apt-get update && apt-get install -y \
#     ffmpeg wget tar \
#  && rm -rf /var/lib/apt/lists/*

# RUN wget https://github.com/bluenviron/mediamtx/releases/download/v1.13.0/mediamtx_v1.13.0_linux_amd64.tar.gz \
#     && mkdir /mediamtx \
#     && tar -xzf mediamtx_v1.13.0_linux_amd64.tar.gz -C /mediamtx \
#     && rm mediamtx_v1.13.0_linux_amd64.tar.gz

# WORKDIR /mediamtx

# EXPOSE 8554 8889 8000 8001 1935 8888 8189 8890

# ENTRYPOINT ["./mediamtx"]



# FROM ubuntu:20.04

# RUN apt update && apt install -y ffmpeg curl bash && rm -rf /var/lib/apt/lists/*

# ENTRYPOINT ["ffmpeg"]




# OLD Dockerfile
# FROM ubuntu:20.04

# RUN apt update && apt install -y ffmpeg curl bash && rm -rf /var/lib/apt/lists/*

# CMD ["bash"]



# NEW Dockerfile
FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ffmpeg curl bash ca-certificates && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]