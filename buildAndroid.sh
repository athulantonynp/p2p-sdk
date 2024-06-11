rm -rf p2p/out/android
rm -rf ./MobileApp/android/app/libs/p2p.aar
go get golang.org/x/mobile/cmd/gomobile
go mod download
go run golang.org/x/mobile/cmd/gomobile init
GO111MODULE=on
cd p2p/
mkdir out/android
go run golang.org/x/mobile/cmd/gomobile bind -v -target=android -o out/android/p2p.aar  -androidapi 24
cp out/android/p2p.aar ../MobileApp/android/app/libs/
cd ..
cd MobileApp/android
yarn android