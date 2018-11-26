const centerJustify = function(limit,msg) {
  let spacesBeforeText = Array(Math.floor((limit-msg.length)/2)).fill(" ").join("");
  let spacesAfterText = Array(Math.ceil((limit-msg.length)/2)).fill(" ").join("");
  return spacesBeforeText+msg+spacesAfterText;
}

let testNumber = {number:1};

const incrementTestNumber = function() {
  testNumber.number++;
}

const getSerialNumber = function() {
  return testNumber.number;
}

const testLogs = function(args,actualResult,expectedResult,msg) {
  let log = centerJustify(5,getSerialNumber().toString()) + "|" + centerJustify(30,msg) + "|";
  log = log + centerJustify(20,JSON.stringify(args)) + "|";
  log = log + centerJustify(20,JSON.stringify(actualResult)) + "|";
  log = log + centerJustify(20,JSON.stringify(expectedResult)) + "|";
  incrementTestNumber();
  console.log(log);
  console.log(Array(100).fill("-").join(""));
}

exports.testLogs = testLogs;
