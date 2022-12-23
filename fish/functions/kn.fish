function kn
kubectl get nodes -o json | jq -Cjr '.items[] | .metadata.name,"   \t",.metadata.labels."beta.kubernetes.io/instance-type","\t",.metadata.labels."beta.kubernetes.io/arch","\t",.metadata.labels."node_group","\t",.metadata.labels    ."topology.kubernetes.io/zone","\n"' | sort -k1 -r
end
