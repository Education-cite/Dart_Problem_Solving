void main(){
Map<String,int> map = {'apple': 3, 'banana': 2, 'cherry': 3, 'date': 1};
  var result = countOfNumber(map);
print(result);
}

Map<String,int> countOfNumber (Map<String,int> m){


var entries = m.entries.toList();
entries.sort((a,b){
  if(b.value!=a.value){
  return b.value.compareTo(a.value);
  }else{
    return a.key.compareTo(b.key);
  }

});

return Map.fromEntries(entries);

}