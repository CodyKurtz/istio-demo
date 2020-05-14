# Helm Chart for Istio demo app bookinfo

### Get your Gateway URL
```
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
```

## Install bookinfo
`helm install bookinfo .`

You have your bookinfo available at http://$GATEWAY_URL/productpage