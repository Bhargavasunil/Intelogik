trigger leadtrigger on Lead (before insert) {
      saiDemo.method(trigger.new);
}