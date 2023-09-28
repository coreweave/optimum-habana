Running on Kubernetes
---------------------
We provide a `Dockerfile` in `docs/Dockerfile.coreweave` that can be used to build your own container if required.

If you are set up on CoreWeave and have access to our H100s, you should be able to perform: `kubectl apply -f docs/optimum-habana-k8s.yaml`. If you need to run on a different GPU type, you can adjust the `H100_NVLINK_80GB` value to something else like `RTX_A6000`. Make sure to adjust the `BATCH_SZ` environment variable appropriately.

Once running, you should be able to observe the output using `kubectl logs -f optimum-habana`. 
