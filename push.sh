echo "~~~~~~~~Staging Files~~~~~~~~~~~~~~~"
git add .

echo "~~~~~~~~Commiting files~~~~~~~~~~~~~"
git commit -m "$1"

echo "~~~~~~~~Pusing Files to Repo~~~~~~~~"
git push