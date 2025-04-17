sed -i "s,GROQ_API_KEY_TOREPLACE,$GROQ_API_KEY," /workspaces/$RepositoryName/setEnv.sh
sed -i "s,PHI_API_KEY_TOREPLACE,$PHI_API_KEY," /workspaces/$RepositoryName/setEnv.sh
sed -i "s,OPENAI_API_KEY_TOREPLACE,$OPENAI_API_KEY," /workspaces/$RepositoryName/setEnv.sh

source /workspaces/$RepositoryName/setEnv.sh

python -m venv financial-agent && source financial-agent/bin/activate && pip install -r requirements.txt
python main.py &
