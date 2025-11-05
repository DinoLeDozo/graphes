curl \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $(cat /home/token.gh)" \
	-H "X-GitHub-Api-Version: 2022-11-28" \
	https://api.github.com/repos/DinoLeDozo/graphes/actions/artifacts \
	> gh-artifacts.json


curl -L \
	-H "Accept: application/vnd.github+json" \
	-H "Authorization: Bearer $(cat /home/token.gh)" \
	-H "X-GitHub-Api-Version: 2022-11-28" \
	https://api.github.com/repos/$OWNER/$REPO/actions/artifacts/4472338839/zip \
	--output artifact.zip
