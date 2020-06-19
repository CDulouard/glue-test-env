FROM ubuntu:eoan

RUN apt-get update -yq \
&& apt-get install apt-utils -y \
&& apt-get install git -y \
&& apt-get install openjdk-8-jre -y \
&& apt-get install python3.7 -y \
&& apt-get install python3-pip -y\
&& python3.7 -m pip install numpy \
&& python3.7 -m pip install pandas \
&& python3.7 -m pip install pyspark \
&& python3.7 -m pip install pytest \
&& apt-get clean -y

ENV ENV test
ENV PYSPARK_PYTHON /usr/bin/python3.7