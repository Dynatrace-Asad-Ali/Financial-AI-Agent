echo "In deployment.sh" > /workspaces/$RepositoryName/status.out
sed -i "s,GROQ_API_KEY_TOREPLACE,$GROQ_API_KEY," /workspaces/$RepositoryName/setEnv.sh
sed -i "s,PHI_API_KEY_TOREPLACE,$PHI_API_KEY," /workspaces/$RepositoryName/setEnv.sh
sed -i "s,OPENAI_API_KEY_TOREPLACE,$OPENAI_API_KEY," /workspaces/$RepositoryName/setEnv.sh