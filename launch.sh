sh prepare_my_repo.sh $1

cp -r lib ./$1
cp -r src ./$1
cp -r include ./$1
cp -r Makefile ./$1

cp -r $1 ../$2
sudo rm -rv $1
echo "FINISHED\n"
