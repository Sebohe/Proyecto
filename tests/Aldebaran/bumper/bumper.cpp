/**
 * Copyright (c) 2011 Aldebaran Robotics
 */

#include "bumper.h"

#include <alvalue/alvalue.h>
#include <alcommon/alproxy.h>
#include <alcommon/albroker.h>
#include <qi/log.hpp>
#include <althread/alcriticalsection.h>

Bumper::Bumper(boost::shared_ptr<AL::ALBroker> broker,const std::string& name): AL::ALModule(broker, name), fCallbackMutex(AL::ALMutex::createALMutex()){

	std::cout<<"Bumper"<<std::endl;
  setModuleDescription("This module presents how to subscribe to a simple event (here RightBumperPressed) and use a callback method.");

  functionName("onRightBumperPressed", getName(), "Method called when the right bumper is pressed. Makes a LED animation.");
  BIND_METHOD(Bumper::onRightBumperPressed)
}

Bumper::~Bumper() {
	std::cout<<"~"<<std::endl;

  fMemoryProxy.unsubscribeToEvent("onRightBumperPressed", "Bumper");
}



void Bumper::init() {
	std::cout<<"Init"<<std::endl;
  try {
    /** Create a proxy to ALMemory.
    */
	std::cout<<"Before memory proxy"<<std::endl;

    fMemoryProxy = AL::ALMemoryProxy(getParentBroker());
	std::cout<<"Before memory.getdata1"<<std::endl;
    fState = fMemoryProxy.getData("RightBumperPressed");
	std::cout<<"After memory.getdata1"<<std::endl;
	std::cout<<"Before memory.SUBSCRIBE"<<std::endl;
    /** Subscribe to event RightBumperPressed
    * Arguments:
    * - name of the event
    * - name of the module to be called for the callback
    * - name of the bound method to be called on event
    */
    fMemoryProxy.subscribeToEvent("RightBumperPressed", "Bumper",
                                  "onRightBumperPressed");
std::cout<<"After memory.SUBSCRIBE"<<std::endl;
  }




  catch (const AL::ALError& e) {
    qiLogError("module.example") << e.what() << std::endl;
  }
}



void Bumper::onRightBumperPressed() {

  std::cout<<"onRightBumperPressed()"<<std::endl;

  qiLogInfo("module.example") << "Executing callback method on right bumper event" << std::endl;
  /**
  * As long as this is defined, the code is thread-safe.
  */
  AL::ALCriticalSection section(fCallbackMutex);

  /**
  * Check that the bumper is pressed.
  */
std::cout<<"before memory.getData2"<<std::endl;
  fState =  fMemoryProxy.getData("RightBumperPressed");
std::cout<<"After memory.getData2"<<std::endl;

  if (fState  > 0.5f) {
	std::cout<<"if"<<std::endl;
    return;
  }
  try {
    fTtsProxy = AL::ALTextToSpeechProxy(getParentBroker());
	std::cout<<"HELLO"<<std::endl;
    fTtsProxy.say("Hello!");
  }
  catch (const AL::ALError& e) {
    qiLogError("module.example") << e.what() << std::endl;
  }
std::cout<<"END"<<std::endl;
}
