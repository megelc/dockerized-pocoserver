FROM ubuntu:18.04

RUN apt update && apt upgrade -y && apt install python3-pip cmake build-essential -y
RUN pip3 install conan

RUN conan profile new default --detect  # Generates default profile detecting GCC and sets old ABI
RUN conan profile update settings.compiler.libcxx=libstdc++11 default  # Sets libcxx to C++11 ABI

COPY . .
WORKDIR build

RUN conan install ..
RUN cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
RUN cmake --build .
CMD ["bin/PocoServer"]
