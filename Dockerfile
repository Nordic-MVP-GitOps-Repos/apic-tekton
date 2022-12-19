ARG APIC_CLIENT_DOWNLOADS_IMAGE=cp.icr.io/cp/apic/ibm-apiconnect-management-client-downloads-server@sha256:4eb454532578f708d890f98348757e1524a9f6c46663acd994d8f7754c7d47b6

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
