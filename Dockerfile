FROM ubuntu
ARG newuser
RUN addgroup --system newgroup
RUN adduser --system $newuser --ingroup newgroup
RUN mkdir /myvol
RUN chown $newuser /myvol
USER $newuser:newgroup
WORKDIR /myvol
VOLUME /myvol
RUN lscpu > info.txt
RUN echo "user: " >> info.txt && whoami >> info.txt
