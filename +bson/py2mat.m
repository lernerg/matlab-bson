function data = py2mat(pyData)
%PY2MAT   Convert python object into matlab object using BSON library
%    m = PY2MAT(p)      return a matlab object (variable/struct/array/cellarray) converted from the python variable p
%
%    See also: bson, bson.read, bson.wrtie.

require bson
bsonFilename = tempname();
b = py.bson.BSON;
fptr = py.open(bsonFilename,'wb');
fptr.write(b.encode(py.dict(pyargs('res',pyData))));
fptr.close();
data = bson.read(bsonFilename);
data = data.res;
delete(bsonFilename);

end
