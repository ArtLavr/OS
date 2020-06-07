echo "Введите название дирректории"
read name
echo "Введите уровень доступа"
read start_access
echo "Ведите финальный доступ"
read final_access
find ./$name -perm /$start_access | chmod $final_access $(find ./$name -perm /$start_access)