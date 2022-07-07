trigger HelloWorldTrigger on Account (before insert) {
 //to print Hello world message in debug log before account record inserted into Database
 
    system.debug('HelloWorld!');
}