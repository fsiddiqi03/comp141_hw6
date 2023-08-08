if ! command -v jq &> /dev/null
then
    echo "jq could not be found. Please install it and run the script again."
    exit 1
fi

# Check if catfacts.json file exists
if [ ! -f catfacts.json ]; then
    echo "catfacts.json not found in the current directory. Please ensure the file is present and run the script again."
    exit 1
fi

# Extract the breeds and save them to breeds.txt
jq -r '.[].breed | "\"\(.),\""' catfacts.json > breeds.txt

echo "Breed types have been successfully extracted to breeds.txt."