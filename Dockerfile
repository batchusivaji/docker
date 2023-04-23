FROM ubuntu:22.04
FROM mcr.microsoft.com/dotnet/aspnet:7.0
ADD  wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.2/nopCommerce_4.60.2_NoSource_linux_x64.zip /nop/nopCommerce_4.60.2_NoSource_linux_x64.zip
WORKDIR /nop
RUN apt update && apt install unzip -y &&  unzip nopCommerce_4.60.2_NoSource_linux_x64.zip && \
     mkdir /nop/bin && mkdir /nop/logs
EXPOSE 5000
CMD [ "dotnet","Nop.Web.dll","-urls","http://0.0.0.0:5000" ]