sh prepare_my_repo.sh $1

cp -r lib ./$1
cp -r src ./$1
cp -r include ./$1
cp -r Makefile ./$1

cd ../
rm -rv auto_project

echo "FINISHED\n"
