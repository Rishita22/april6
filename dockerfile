FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page265/fitcento.zip
RUN apt install unzip -y
RUN unzip fitcento.zip
RUN rm -rf fitcento.zip
RUN mv fitcento/* /usr/local/apache2/htdocs
CMD httpd-foreground


