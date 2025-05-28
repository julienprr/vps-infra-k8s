
cd /opt/vps-infra-k8s || {
  echo "❌ Dossier non trouvé."
  exit 1
}

echo "🔄 Mise à jour du dépôt Git..."
git pull origin main || {
  echo "❌ Échec du git pull"
  exit 1
}

echo "🚀 Déploiement Kustomize depuis clusters/default/..."
kubectl apply -k clusters/default/ || {
  echo "❌ Échec du déploiement"
  exit 1
}

echo "✅ Déploiement terminé avec succès."
