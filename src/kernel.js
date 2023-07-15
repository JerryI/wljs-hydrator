//Here you can write in Javascript modules you want for the frontend
//importing libraries is supported
core.HydrateSeed = async (args, env) => {
    const id = await interpretate(args[0], env);
    const cuid = Date.now() + Math.floor(Math.random() * 100);
    
    let global = {call: cuid};
  
    let e = {global: global, element: document.body}; 
    console.log("Hydrator: creating an object with key "+id);
    const fobj = new ExecutableObject(id, e);
    fobj.execute()     
  
    //this.ref.push(this.fobj);
  }