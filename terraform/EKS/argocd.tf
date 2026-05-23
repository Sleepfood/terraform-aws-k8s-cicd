data "aws_eks_cluster" "danit" {
  name = aws_eks_cluster.danit.name
}

resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "5.55.0"
  namespace        = "argocd"
  create_namespace = true
values = [
  yamlencode({
    server = {
      ingress = {
        enabled          = true
        ingressClassName = "nginx"
        hosts            = ["argocd.sleepfood.pp.ua"]
        tls = [{
          secretName = "argocd-tls"
          hosts      = ["argocd.sleepfood.pp.ua"]
        }]
        annotations = {
          "nginx.ingress.kubernetes.io/ssl-redirect" = "false"
        }
      }
      extraArgs = ["--insecure"]
    }
  })
]
}
