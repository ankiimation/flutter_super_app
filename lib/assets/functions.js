const superAppName = SuperAppName;
function invoke(methodName, params){
    SuperAppName.postMessage(`\${methodName}#\${params}`);
  }
  
  function handle(methodName, params){
    alert(methodName + params);
    return methodName + params;
  }