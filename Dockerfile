ARG APIC_CLIENT_DOWNLOADS_IMAGE=cp.icr.io/cp/apic/ibm-apiconnect-management-client-downloads-server@sha256:2fc3cc6f77f44ecce25f382578d0aa9a167ef0d598ad04648d8fba64d8c8e6ac

FROM $APIC_CLIENT_DOWNLOADS_IMAGE as apic-client-downloads

USER root

RUN microdnf update && \
    microdnf install --nodocs tar && \
    tar -xvf /dist/toolkit-linux.tgz && \
    chmod +x apic-slim && \
    mv apic-slim ./apic
    
FROM alpine:latest

RUN apk add --no-cache bash curl yq
COPY --from=apic-client-downloads ./apic ./bin/apic

RUN apic version --accept-license --live-help false

ENTRYPOINT ["apic"]
CMD ["-h"]
