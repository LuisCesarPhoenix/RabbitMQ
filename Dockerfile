ARG RABBITMQ_VERSION=3.13.0-management  
# Usa uma versão específica e segura com plugins 
  
FROM rabbitmq:${RABBITMQ_VERSION}
# Define a imagem base do RabbitMQ com a versão especificada

RUN rabbitmq-plugins enable --offline \
    rabbitmq_management \
    rabbitmq_mqtt \
    rabbitmq_federation_management \
    rabbitmq_stomp
# - rabbitmq-plugins enable --offline: Ativa plugins importantes antes da inicialização
# - rabbitmq_management: interface web de gerenciamento
# - rabbitmq_mqtt: suporte ao protocolo MQTT
# - rabbitmq_federation_management: gerencia federação entre brokers
# - rabbitmq_stomp: suporte ao protocolo STOMP