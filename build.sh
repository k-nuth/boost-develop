# Requirements:
pip install numpy --user --upgrade

# Build
rm -rf build
rm conan.lock

export VERSION="cci.20230627"

conan lock create conanfile.py --version=$VERSION --update
conan lock create conanfile.py --version $VERSION --lockfile=conan.lock --lockfile-out=build/conan.lock
conan create conanfile.py --version $VERSION --lockfile=build/conan.lock
conan upload boost-develop/$VERSION -r kth --only-recipe
