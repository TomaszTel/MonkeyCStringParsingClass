 using Toybox.WatchUi;

  
 using Toybox.WatchUi;
(:glance)
 class FindAndSubstringClass  {
    var ReplaceString = ["[","]",","," "];

function DeleteLastWordFromString(datastring,index)
{
var LenghtFromString = datastring.length();
var FindInString = datastring.find(index);
var GetDeletedString = datastring.substring(FindInString, LenghtFromString) ;

return stringReplace(datastring,GetDeletedString,"");
}

function DeleteFirstWordFromString(datastring,index)
{
var LenghtFromString = datastring.length();
var IndexLenght = index.length();
var FindInString = datastring.find(index) + IndexLenght;
var GetDeletedString = datastring.substring(LenghtFromString, FindInString) ;

var again =  stringReplace(datastring,GetDeletedString,"");

return stringReplace(datastring,again,"");
}
function RemoveWordFromString(datastring,From,To)
{
    var LenghtFromString = From.length();
    var LenghtToString = To.length();
    
var result = datastring;
var indexFrom = result.find(From);
var TrimTo = result.substring(indexFrom, LenghtFromString + indexFrom );
var DeleteFirstFrom = stringReplace(result,TrimTo,"");
var indexTo = DeleteFirstFrom.find(To) + LenghtToString;
var CharArray =    DeleteFirstFrom.toCharArray();
var SlinceArray = CharArray.slice(indexFrom, indexTo);
var ArrayToString = SlinceArray.toString();
var GetCharToDelete = stringReplace(ArrayToString,ReplaceString,"");
return stringReplace(DeleteFirstFrom,GetCharToDelete,"");

}

function deleteAllNumberFromString(DataString)
{
var result = DataString;

var FindIndex;
var i = 0;
while (true)
{
     FindIndex = result.find(i.toString());

    if(FindIndex != null)
    {
    result = stringReplace(result,i.toString(),"");
    
    }
    else
    {

         if (i == 10)
        {
           return result;

        }
        else
        {
        i ++;
        }
    }
}


}
function FindAndSubstring(DataString,IndexFrom,IndexTo,IndexFromRemove,IndexToRemove)
{
var indexFrom = DataString.find(IndexFrom) ;
var indexTo = DataString.find(IndexTo) ;

return DataString.substring(indexFrom + IndexFromRemove, indexTo - IndexToRemove);
}
function stringReplace(str, oldString, newString)
{
var result = str;

if(oldString instanceof Toybox.Lang.String)

{
while (true)
{
var index = result.find(oldString);

if (index != null)
{
var index2 = index+oldString.length();
result = result.substring(0, index) + newString + result.substring(index2, result.length());
}
else
{
return result;
}
}

}
else
{


for (var i = 0; i < oldString.size(); ++i) {

while (true)
{
var index = result.find(oldString[i]);

if (index != null)
{
var index2 = index+oldString[i].length();
result = result.substring(0, index) + newString + result.substring(index2, result.length());
}
else
{
break;
}
}
}
return result;
}
}
}
 
