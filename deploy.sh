cd /opt/vps-infra-k8s || exit 1

echo "🔄 Mise à jour du dépôt..."
git pull origin main || exit 1

echo "🚀 Déploiement de l'ingress nginx..."
kubectl apply -f ingress-nginx/ || exit 1

echo "🚀 Déploiement de l'application portfolio..."
kubectl apply -f apps/portfolio/ || exit 1

echo "✅ Déploiement terminé."
